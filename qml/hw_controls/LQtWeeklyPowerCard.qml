import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SmartHome

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
        RowLayout {
            Layout.fillHeight: true
            Label {
                text: "Week"
                font.bold: true
                font.pointSize: 16
                color: Colors.primaryTextColor
            }
            Item {
                Layout.fillWidth: true
            }
            Label {
                text: "Jan 11-17"
                font.pointSize: 16
                color: Colors.primaryTextColor
            }
        }
        RowLayout {
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 0
                text: "M"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 0
                text: "T"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 0
                text: "W"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 0
                text: "T"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 0
                text: "F"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 0
                text: "S"
            }
            LQtProgressBar {
                Layout.fillWidth: true
                Layout.fillHeight: true
                value: 20
                text: "S"
            }
        }
        RowLayout {
            Layout.fillHeight: true
            Text {
                text: "12.8"
                font.bold: true
                font.pointSize: 20
                color: Colors.primaryTextColor
            }
            Text {
                text: "kWh"
                font.pointSize: 14
                color: Colors.primaryTextColor
            }
        }
    }
}
