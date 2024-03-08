pragma Singleton
import QtQuick
import QtQuick.Controls.Material

QtObject {
    enum CurrentTheme {
        LIGHT,
        DARK
    }

    property int currentTheme: AppSettings.currentTheme

    function getCurrentTheme() {
        if (currentTheme === Colors.CurrentTheme.LIGHT) {
            return Material.Light;
        } else {
            return Material.Dark;
        }
    }

    readonly property color primaryColor: currentTheme === Colors.CurrentTheme.LIGHT ? Material.primaryColor : "#4fbfe8"
    readonly property color primaryTextColor: currentTheme === Colors.CurrentTheme.LIGHT ? Material.primaryTextColor : "white"
    readonly property color primaryFrameColor: currentTheme === Colors.CurrentTheme.LIGHT ? Material.frameColor : "white"
    readonly property color primaryHintTextColor: currentTheme === Colors.CurrentTheme.LIGHT ? "#eaeaea" : "white"
    readonly property color primaryBackgroundColor: currentTheme === Colors.CurrentTheme.LIGHT ? "#f0f1f0" : "#0f0f0f"
    readonly property color secondaryBackgroundColor: currentTheme === Colors.CurrentTheme.LIGHT ? "#f2f2f3" : Qt.lighter("#0f0f0f", 1.5)
    readonly property color tertiaryBackgroundColor: currentTheme === Colors.CurrentTheme.LIGHT ? "#fffefe" : Qt.lighter("#0f0f0f", 2.5)

    readonly property color errorColor: "#e66363"
    readonly property color containerColor: "#36b7f7"
    readonly property color linkColor: Qt.lighter("blue", 1.5)
}
