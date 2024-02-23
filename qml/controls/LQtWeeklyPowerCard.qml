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
        RowLayout {
            Layout.fillWidth: true
            Text {
                text: "Week"
                font.bold: true
                font.pointSize: 16
            }
            Item {
                Layout.fillWidth: true
            }
            Text {
                text: "Jan 11-17"
                font.pointSize: 16
            }
        }
        RowLayout {
            Layout.fillWidth: true
            LQtProgressBar {
                Layout.fillWidth: true
                value: 0
                text: "M"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                value: 0
                text: "T"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                value: 0
                text: "W"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                value: 0
                text: "T"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                value: 0
                text: "F"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                value: 0
                text: "S"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                value: 20
                text: "S"
            }
        }
        RowLayout {
            Text {
                text: "12.8"
                font.bold: true
                font.pointSize: 20
            }
            Text {
                text: "kWh"
                font.pointSize: 14
            }
        }
    }
}
