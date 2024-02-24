import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property alias iconSource: iconId.source
    property alias topic: topicId.text
    property alias subtopic: subtopicId.text

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        IconImage {
            id: iconId
            Layout.alignment: Qt.AlignHCenter
            name: "itemIcon"
        }
        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            Text {
                id: topicId
                Layout.alignment: Qt.AlignHCenter
                font.bold: true
                font.pointSize: 18
            }
            Text {
                id: subtopicId
                Layout.alignment: Qt.AlignHCenter
                wrapMode: Text.Wrap
            }
        }
    }
}
