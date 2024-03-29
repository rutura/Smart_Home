import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property alias value: progressBarId.value
    property alias text: textId.text

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        ProgressBar {
            id: progressBarId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            from: 0
            to: 100
            padding: 2
            rotation: 180
            background: Rectangle {
                implicitWidth: 6
                implicitHeight: 200
                color: "#e6e6e6"
                radius: 3
            }
            contentItem: Item {
                implicitWidth: 4
                implicitHeight: 200
                Rectangle {
                    width: parent.width
                    height: progressBarId.visualPosition * parent.height
                    radius: 2
                    color: "blue"
                    visible: !progressBarId.indeterminate
                }
            }
        }
        Text {
            id: textId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.bold: true
            font.pointSize: 14
            color: Colors.primaryTextColor
        }
    }
}
