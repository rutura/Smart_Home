import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

PaddedRectangle {
    id: accessoryId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2
    radius: containerId.implicitWidth / 8
    // border.width: 1
    // border.color: "gray"
    color: Colors.tertiaryBackgroundColor

    property alias iconSource: accessoryIconId.source
    property alias title: accessoryTitleId.text
    property alias status: accessoryStatusId.text
    property bool showInfo: false
    property bool active: false
    ColumnLayout {
        id: containerId
        anchors.fill: parent
        anchors.margins: 5
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            IconImage {
                id: accessoryIconId
                name: "AccessoryIcon"
                color: active ? Colors.linkColor: Colors.primaryColor
            }
            Item {
                Layout.fillWidth: true
            }
            RoundButton {
                icon {
                    name: "info"
                    source: "qrc:/assets/info.svg"
                    color: Colors.primaryColor
                }
                visible: showInfo
            }
        }
        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Text {
            id: accessoryTitleId
            Layout.fillWidth: true
            Layout.fillHeight: true
            font.bold: true
            font.pointSize: 18
            color: Colors.primaryTextColor
        }
        Text {
            id: accessoryStatusId
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: Colors.primaryTextColor
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            accessoryId.active = !accessoryId.active
        }
    }
}
