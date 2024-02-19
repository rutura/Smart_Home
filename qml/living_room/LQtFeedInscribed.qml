import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

Rectangle {
    id: rootId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Material.elevation: 2
    color: "transparent"

    property alias topic: topicId.text
    property alias subtopic: subtopicId.text
    property alias feed: videoId.source

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        Text{
            id: topicId
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: 24
            font.bold: true
        }
        Text {
            id: subtopicId
            Layout.alignment: Qt.AlignHCenter
            wrapMode: Text.Wrap
        }
        RoundButton {
            id: lockId
            Layout.alignment: Qt.AlignHCenter
            icon.source: "qrc:/assets/unlock.svg"
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter
            border.color: "white"
            border.width: 2
            radius: 1
            width: rootId.implicitWidth / 2
            height: rootId.implicitHeight / 3
            MediaPlayer {
                   id: videoId
                   videoOutput: videoOutput
               }

               VideoOutput {
                   id: videoOutput
                   anchors.fill: parent
               }
        }
    }
    Component.onCompleted: {
        videoId.play()
    }
}
