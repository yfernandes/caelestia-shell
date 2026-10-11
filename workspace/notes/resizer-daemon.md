# Resizer daemon

- A stale `caelestia resizer -d` instance can retain an obsolete Hyprland
  instance signature and receive immediate EOF from the event socket.
- Treat EOF as a fatal connection loss: propagate the error, exit nonzero, and
  let `caelestia-resizer.service` recover through `Restart=on-failure` with a
  short `RestartSec` delay. Continuing the read loop causes a CPU spin.
- Process `%CPU` can hide the spin. Inspect `/proc/<pid>/sched`, the live user
  unit, its journal, and the installed binary path before dismissing it.
- Verify the installed runtime, not only the source checkout, after rebuilding.
