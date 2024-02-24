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

    property alias iconSource: accessoryIconId.source
    property alias title: accessoryTitleId.text
    property alias status: accessoryStatusId.text
    property bool showInfo: false

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
            }
            Item {
                Layout.fillWidth: true
            }
            RoundButton {
                icon.source: "qrc:/assets/info.svg"
                icon.name: "info"
                visible: showInfo
            }
        }
        Item {
            Layout.fillHeight: true
        }
        Text {
            id: accessoryTitleId
            font.bold: true
            font.pointSize: 18
        }
        Text {
            id: accessoryStatusId
        }
    }
}
