import QtQuick
import QtQuick.Controls
import AppConstants
/**
 * @brief Theme switch for dark mode or light mode.
 */
Switch {
    id: control
    checked: AppSettings.currentTheme === Colors.CurrentTheme.DARK
    onToggled: {
        if (Colors.currentTheme === Colors.CurrentTheme.LIGHT) {
            AppSettings.currentTheme = Colors.CurrentTheme.DARK;
        } else {
            AppSettings.currentTheme = Colors.CurrentTheme.LIGHT;
        }
    }
}
