pragma Singleton

import Quickshell
import qs.components
import qs.services

Singleton {
    property var screens: new Map()
    property var bars: new Map()

    function load(screen: ShellScreen, visibilities: DrawerVisibilities): void {
        screens.set(screen, visibilities);
    }

    function unload(screen: ShellScreen): void {
        screens.delete(screen);
        bars.delete(screen);
    }

    function getForActive(): DrawerVisibilities {
        const focused = Hypr.focusedMonitor;
        for (const [screen, vis] of screens.entries()) {
            if (Hypr.monitorFor(screen) === focused)
                return vis;
        }
        return null;
    }
}
