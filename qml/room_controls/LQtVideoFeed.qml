import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import SmartHome

PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2
    border.width: 1
    border.color: "gray"
    color: "transparent"
    property alias feed: videoId.source

    MediaPlayer {
        id: videoId
        videoOutput: videoOutput
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
        fillMode: VideoOutput.Stretch
    }
    RowLayout {
        id: containerId
        anchors.fill: parent
        ColumnLayout {
            Layout.fillHeight: true
            RowLayout {
                RoundButton {
                    id: liveId
                    icon {
                        name: "live"
                        source: "qrc:/assets/dot.svg"
                        color: Colors.primaryColor
                    }
                    text: "Live"
                }
                Button {
                    text: "Effects On"
                }
            }
            Item {
                Layout.fillHeight: true
            }
            Button {
                icon.source: "qrc:/assets/microphone.svg"
                icon.name: "talk"
                text: "talk"
            }
        }
        Item {
            Layout.fillWidth: true
        }
        LQtFeedInscribed {
            Layout.fillHeight: true
            topic: "1025 Sacana Street"
            subtopic: "Rita Leila is ringing \n the door bell"
            feed: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        }
    }
    Component.onCompleted: {
        videoId.play();
    }
}
