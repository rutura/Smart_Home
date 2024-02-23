import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2
    radius: containerId.implicitWidth / 8
    border.width: 1
    border.color: "gray"
    color: "transparent"

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        Text {
            text: "Nest Learning"
            font.bold: true
            font.pointSize: 16
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
