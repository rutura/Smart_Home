import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

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
        }
        Label {
            id: currentArtistId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
        }
        RowLayout {
            id: musicControlsId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillHeight: true
            RoundButton {
                icon.source: "qrc:/assets/backward.svg"
                icon.name: "backward"
            }
            RoundButton {
                icon.source: "qrc:/assets/play.svg"
                icon.name: "play_or_pause"
            }
            RoundButton {
                icon.source: "qrc:/assets/forward.svg"
                icon.name: "forward"
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
            }
            Item {
                Layout.fillWidth: true
            }
            Label {
                id: songDurationId
                text: "-2:17"
            }
        }
    }
}
