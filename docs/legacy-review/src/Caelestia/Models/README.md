# Models Sub-Module

This directory contains custom data models that expose list structures to QML views.

## Core Classes

* **[FileSystemModel](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Models/filesystemmodel.hpp):** An asynchronous model representing files and directories under a target path.
  * **Asynchronous Indexing:** Employs concurrent workers (`QFuture`) to index folders to keep the GUI thread fluid.
  * **Hot Reloading:** Registers a `QFileSystemWatcher` on the directories. When files are added, modified, or removed, the changes are processed and applied using list model differential signals (`beginInsertRows`, `endInsertRows`, etc.).
  * **Metadata Querying:** Extracts MIME types and validates image files using `QMimeDatabase` and `QImageReader` checks.
  * **Filtering & Sorting:** Supports filtering lists (images, files, folders) and sorting alphabetically or in reverse.
