#!/usr/bin/env python3
import os
import shutil
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
BUILD_QML = REPO_ROOT / "build" / "qml"
SDK_DIR = REPO_ROOT / "build" / "sdk"

SOURCE_DIRS = ["components", "services", "utils", "modules", "config"]

def clean_dir(path: Path):
    if path.exists():
        shutil.rmtree(path)
    path.mkdir(parents=True, exist_ok=True)

def copy_cpp_modules():
    print("Copying compiled C++ QML modules to SDK...")
    for mod in ["Caelestia", "M3Shapes"]:
        src = BUILD_QML / mod
        if src.exists():
            dest = SDK_DIR / mod
            shutil.copytree(src, dest, dirs_exist_ok=True)
            print(f"  Copied C++ module: {mod}")
        else:
            print(f"  Warning: Compiled C++ module '{mod}' not found in {src}. Make sure you built the project first.")

def generate_qs_modules():
    print("Generating qs.* native QML modules under SDK...")
    qs_root = SDK_DIR / "qs"
    qs_root.mkdir(parents=True, exist_ok=True)

    for src_name in SOURCE_DIRS:
        src_path = REPO_ROOT / src_name
        if not src_path.exists():
            continue

        # Traverse source directories
        for root, dirs, files in os.walk(src_path):
            root_path = Path(root)
            qml_files = [f for f in files if f.endswith(".qml")]
            
            # Skip folders without QML files
            if not qml_files:
                continue

            # Compute relative path to build the qs URI and target directory
            rel_path = root_path.relative_to(REPO_ROOT)
            rel_parts = rel_path.parts
            
            uri = "qs." + ".".join(rel_parts)
            dest_dir = qs_root / Path(*rel_parts[1:]) if len(rel_parts) > 1 else qs_root / rel_parts[0]
            dest_dir.mkdir(parents=True, exist_ok=True)

            print(f"  Generating module {uri} at {dest_dir.relative_to(REPO_ROOT)}")

            # Copy all QML files
            for qml_file in qml_files:
                shutil.copy2(root_path / qml_file, dest_dir / qml_file)

            # Copy or generate qmldir
            src_qmldir = root_path / "qmldir"
            dest_qmldir = dest_dir / "qmldir"

            if src_qmldir.exists():
                shutil.copy2(src_qmldir, dest_qmldir)
                print(f"    Copied existing qmldir for {uri}")
            else:
                # Generate a qmldir automatically
                lines = [f"module {uri}"]
                for qml_file in qml_files:
                    comp_name = Path(qml_file).stem
                    lines.append(f"{comp_name} 1.0 {qml_file}")
                
                dest_qmldir.write_text("\n".join(lines) + "\n")
                print(f"    Generated qmldir for {uri} ({len(qml_files)} components)")

def main():
    print("Starting Caelestia SDK generation...")
    clean_dir(SDK_DIR)
    
    # 1. Copy the C++ plugins and external shapes
    copy_cpp_modules()
    
    # 2. Process pure QML folders and map under qs.*
    generate_qs_modules()
    
    print(f"\nSDK successfully generated at: {SDK_DIR}")
    print("Developers can now add this directory to their QML import paths (e.g. QML2_IMPORT_PATH).")

if __name__ == "__main__":
    main()
