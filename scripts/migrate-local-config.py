import json
import sys
from pathlib import Path

path = Path(sys.argv[1])
if not path.exists():
    sys.exit(0)
config = json.loads(path.read_text())
services = config.get('services', {})
if 'useFahrenheit' in services:
    services.setdefault('weatherUnits', 'Fahrenheit' if services.pop('useFahrenheit') else 'Celsius')
if 'useTwelveHourClock' in services:
    services.setdefault('clockFormat', 'TwelveHour' if services.pop('useTwelveHourClock') else 'TwentyFourHour')
workspaces = config.get('bar', {}).get('workspaces', {})
if 'perMonitorWorkspaces' in workspaces:
    workspaces.setdefault('perMonitor', workspaces.pop('perMonitorWorkspaces'))
path.write_text(json.dumps(config, indent=4) + '\n')
