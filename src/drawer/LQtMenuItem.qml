import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

PaddedRectangle {
    id: controlId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Material.elevation: 2

    radius: containerId.implicitWidth / 16

    property alias text: menuTextId.text

    signal itemSelected
    color: Colors.secondaryBackgroundColor
    RowLayout {
        id: containerId
        anchors.fill: parent
        IconImage {
            name: "menu item"
            source: "qrc:/assets/item.svg"
            color: Colors.primaryColor
        }
        Label {
            id: menuTextId
            font.bold: true
            font.pointSize: 16
            color: Colors.primaryTextColor
        }
        Item {
            Layout.fillWidth: true
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: itemSelected()
        hoverEnabled: true
    }
}
