import QtQuick
import QtQuick.Controls
import SmartHome

Switch {
    id: control

    onToggled: {
        if (Colors.currentTheme === Colors.CurrentTheme.LIGHT) {
            Colors.currentTheme = Colors.CurrentTheme.DARK;
        } else {
            Colors.currentTheme = Colors.CurrentTheme.LIGHT;
        }
    }
}
