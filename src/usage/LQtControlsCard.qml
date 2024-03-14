import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

/**
 * @brief WiFi and power display
 */
PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2
    radius: containerId.implicitWidth / 8
    // border.width: 1
    // border.color: "gray"
    color: Colors.tertiaryBackgroundColor

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        anchors.margins: 5
        Label {
            text: "Nest Learning"
            font.bold: true
            font.pointSize: 16
            color: Colors.primaryTextColor
        }
        LQtIconWithTexts {
            id: item1Id
            iconSource: "qrc:/assets/wifi.svg"
            topic: "WiFi"
            subtopic: "Connected"
        }
        LQtIconWithTexts {
            id: item2Id
            iconSource: "qrc:/assets/flash.svg"
            topic: "AC"
            subtopic: "Power Cycling"
        }
    }
}
