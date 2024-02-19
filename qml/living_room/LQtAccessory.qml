import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Layout.fillHeight: true
    Layout.fillWidth: true
    Material.elevation: 2
    border.color: Material.dropShadowColor
    border.width: 1
    radius: containerId.implicitWidth / 8

    property alias iconSource: accessoryIconId.source
    property alias  title: accessoryTitleId.text
    property alias  status: accessoryStatusId.text
    property bool showInfo: false

    ColumnLayout{
        id: containerId
        anchors.fill: parent
        anchors.margins: 5
        RowLayout{
            Layout.fillWidth: true
            IconImage {
                id: accessoryIconId
                name: "AccessoryIcon"
            }
            Item{
                Layout.fillWidth: true
            }
            RoundButton{
                icon.source: "qrc:/assets/info.svg"
                icon.name: "info"
                visible: showInfo
            }
        }
        Item{
            Layout.fillHeight: true
        }
        Text{
            id: accessoryTitleId
            font.bold: true
            font.pointSize: 18
        }
        Text{
            id: accessoryStatusId
        }
    }
}
