# Plugin system

- Decide whether a review is checked against repository truth or only for
  internal document consistency; do not silently widen the requested scope.
- Trace one authoritative path through discovery, manifest validation,
  consent, loading, enablement, extension-point state, and failure handling.
- `Loader.setSource` and `PluginRegistry.setExtensionPointState` are important
  authority boundaries; provider ownership and schema/version behavior must be
  explicit rather than implied across sections.
- Re-run a full consistency pass after fixes. Earlier passes exposed lifecycle,
  provider, consent, and schema mismatches that were invisible in isolation.
