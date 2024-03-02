import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property alias topic: topicId.text
    property alias message: messageId.text
    property alias icon: iconId.source

    RowLayout {
        id: containerId
        anchors.fill: parent
        IconImage {
            id: iconId
            name: "automatedItem"
            color: Colors.primaryColor
        }
        ColumnLayout {
            Layout.fillWidth: true
            Label {
                id: topicId
                font.bold: true
                color: Colors.primaryTextColor
            }
            Label {
                id: messageId
                font.italic: true
                color: Colors.primaryTextColor
            }
        }
    }
}
