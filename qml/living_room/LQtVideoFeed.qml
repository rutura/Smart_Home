import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

Rectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Layout.fillHeight: true
    Layout.fillWidth: true
    Material.elevation: 2
    property alias feed: videoId.source
    MediaPlayer {
           id: videoId
           videoOutput: videoOutput
       }

       VideoOutput {
           id: videoOutput
           anchors.fill: parent
       }
    RowLayout{
        id: containerId
        anchors.fill: parent
        ColumnLayout{
            RowLayout{
                Button{
                    id: liveId
                    icon.source: "qrc:/assets/dot.svg"
                    icon.name: "live"
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
        Item{
            Layout.fillWidth: true
        }
        LQtFeedInscribed{
            topic: "1025 Sacana Street"
            subtopic: "Rita Leila is ringin the door bell"
            feed: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        }
    }
    Component.onCompleted: {
        videoId.play()
    }
}
