import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

/**
 * @brief Section Item delegate for settings list view.
 */
PaddedRectangle {
    id: rectangleId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    color: Colors.tertiaryBackgroundColor
    Material.elevation: 2
    radius: rectangleId.implicitHeight / 8

    property alias text: textId.text
    property alias enabled: switchId.checked
    signal toggled
    signal clicked

    RowLayout {
        id: containerId
        anchors.fill: parent

        Text {
            id: textId
            color: Colors.primaryTextColor
            font.pointSize: 14
            font.bold: true
            MouseArea {
                anchors.fill: parent
                onClicked: rectangleId.clicked()
            }
        }
        Item {
            Layout.fillWidth: true
        }
        Switch {
            id: switchId
            onToggled: rectangleId.toggled()
        }
    }
}
