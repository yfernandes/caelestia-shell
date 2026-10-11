# Services Sub-Module

This directory contains singleton services that manage system telemetry and real-time audio analysis.

## Core Services

### Real-Time Audio Capture & Processing
* **[AudioCollector](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/audiocollector.hpp):** Spawns a dedicated thread (`PipeWireWorker`) running a PipeWire loop to record system audio at 44.1kHz. Uses an atomic pointer-swapping mechanism with two internal float buffers to prevent memory contention.
* **[BeatTracker](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/beattracker.hpp):** Analyzes raw PCM chunks from the collector in a background thread using the `aubio` library's tempo tracking algorithm to calculate beats and BPM.
* **[CavaProvider](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cavaprovider.hpp):** Passes PCM frames to `cavacore` to compute Fast Fourier Transforms (FFT), grouping the resulting frequency bands for audio equalizer bars.

### System Telemetry
* **[CPU](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/cpu.hpp):** Parses `/proc/stat` to calculate usage percentages.
* **[GPU](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/gpu.hpp):** 
  * NVIDIA: Dynamically links to NVML (`libnvidia-ml.so`) using `QLibrary` to read utilization, memory, and temperature metrics.
  * AMD / Intel: Reads utilization metrics directly from sysfs nodes (e.g. `gpu_busy_percent`).
* **[Memory](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/memory.hpp):** Parses `/proc/meminfo` to calculate system memory status.
* **[Storage](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/storage.hpp) & [DiskInfo](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/diskinfo.hpp):** Tracks mounted filesystems by parsing `/proc/mounts` and queries disk space metrics using `statvfs`.

### Media Extras
* **[Lyrics](file:///home/yago/projects/active/caelestia/shell-upstream/plugin/src/Caelestia/Services/lyrics.hpp):** Parsers LRC synchronization timestamp files and manages candidate lyrics searches.
