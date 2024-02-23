import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Layout.fillHeight: true
    Layout.fillWidth: true

    property alias iconSource: iconId.icon.source
    property alias topic: topicId.text
    property alias subtopic: subtopicId.text

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RoundButton {
            id: iconId
            Layout.alignment: Qt.AlignHCenter
            icon.name: "buttonIcon"
        }
        Text {
            id: topicId
            Layout.alignment: Qt.AlignHCenter
            font.bold: true
        }
        Text {
            id: subtopicId
            Layout.alignment: Qt.AlignHCenter
        }
    }
}
