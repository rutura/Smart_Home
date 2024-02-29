import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SmartHome

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Material.elevation: 2

    property alias currentSong: currentSongId.text
    property alias currentArtist: currentArtistId.text

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        Label {
            id: currentSongId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            font.bold: true
            color: Colors.primaryTextColor
        }
        Label {
            id: currentArtistId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            color: Colors.primaryTextColor
        }
        RowLayout {
            id: musicControlsId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            RoundButton {
                icon {
                    source: "qrc:/assets/backward.svg"
                    name: "backward"
                    color: Colors.primaryColor
                }
            }
            RoundButton {
                icon {
                    source: "qrc:/assets/play.svg"
                    name: "play_or_pause"
                    color: Colors.primaryColor
                }
            }
            RoundButton {
                icon {
                    source: "qrc:/assets/forward.svg"
                    name: "forward"
                    color: Colors.primaryColor
                }
            }
        }
        LQtSlider {
            width: musicControlsId.implicitWidth
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
        }
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Label {
                id: currentTimeId
                text: "1:21"
                color: Colors.primaryTextColor
            }
            Item {
                Layout.fillWidth: true
            }
            Label {
                id: songDurationId
                text: "-2:17"
                color: Colors.primaryTextColor
            }
        }
    }
}
