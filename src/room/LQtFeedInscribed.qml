import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import AppConstants

Item {
    id: rootId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Material.elevation: 2

    property alias topic: topicId.text
    property alias subtopic: subtopicId.text
    property alias feed: videoId.source

    MediaPlayer {
        id: videoId
        videoOutput: videoOutput
    }

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        Label {
            id: topicId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            font.pointSize: 18
            font.bold: true
            color: Colors.primaryTextColor
        }
        Label {
            id: subtopicId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            color: Colors.primaryTextColor
        }
        RoundButton {
            id: lockId
            Layout.alignment: Qt.AlignHCenter
            icon {
                name: "Unlock"
                source: "qrc:/assets/unlock.svg"
            }
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter
            width: 200
            height: 100
            border.color: "white"
            border.width: 5
            radius: 1
            clip: true
            VideoOutput {
                id: videoOutput
                anchors.fill: parent
                fillMode: VideoOutput.Stretch
            }
        }
    }
    Component.onCompleted: {
        videoId.play();
    }
}
