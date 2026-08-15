# Dynamic schemes

- The shell owns Material Color Utilities extraction while the companion CLI
  consumes the stable generated `scheme.json` contract.
- Backend-specific Nexus controls belong behind the selected extraction
  backend; preserve the existing JSON fields when moving implementation code.
- Vendored Material utilities live under `third_party`; keep backend moves
  separate from behavior changes when practical.
- Check both shell and companion CLI repositories when changing this boundary.
