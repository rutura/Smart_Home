import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property alias text: menuTextId.text

    signal itemSelected

    RowLayout {
        id: containerId
        anchors.fill: parent
        IconImage {
            name: "menu item"
            source: "qrc:/assets/item.svg"
        }
        Label {
            id: menuTextId
            font.bold: true
            font.pointSize: 16
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: itemSelected()
        hoverEnabled: true
    }
}
