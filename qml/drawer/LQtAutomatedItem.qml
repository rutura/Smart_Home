import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Layout.fillWidth: true
    property alias topic: topicId.text
    property alias message: messageId.text
    property alias icon: iconId.source

    RowLayout {
        id: containerId
        Layout.fillWidth: true
        IconImage{
            id: iconId
            name: "automatedItem"
        }
        ColumnLayout{
            Layout.fillWidth: true
            Text {
                id: topicId
                font.bold: true
            }
            Text {
                id: messageId
                font.italic: true
            }
        }
    }
}
