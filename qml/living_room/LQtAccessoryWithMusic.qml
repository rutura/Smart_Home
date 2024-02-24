import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2

    radius: containerId.implicitWidth / 16
    border.width: 1
    border.color: "gray"
    color: "transparent"

    property alias iconSource: accessoryIconId.source
    property alias title: accessoryTitleId.text
    property alias status: accessoryStatusId.text
    property alias currentSong: currentSongId.text
    property alias currentArtist: currentArtistId.text
    property alias currentTime: currentTimeId.text
    property alias songDuration: songDurationId.text

    RowLayout {
        id: containerId
        anchors.fill: parent
        anchors.margins: 8
        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            IconImage {
                id: accessoryIconId
                name: "accessory"
            }
            Item {
                Layout.fillHeight: true
            }
            Text {
                id: accessoryTitleId
                font.bold: true
                font.pointSize: 18
            }
            Text {
                id: accessoryStatusId
            }
        }
        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Text {
                id: currentSongId
                Layout.alignment: Qt.AlignHCenter
                font.bold: true
            }
            Text {
                id: currentArtistId
                Layout.alignment: Qt.AlignHCenter
            }
            RowLayout {
                id: musicControlsId
                Layout.alignment: Qt.AlignHCenter
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
            }
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Text {
                    id: currentTimeId
                    Layout.alignment: Qt.AlignLeft
                }
                Item {
                    // width: musicProgressId.width * 2
                    Layout.fillWidth: true
                }
                Text {
                    id: songDurationId
                    Layout.alignment: Qt.AlignRight
                }
            }
        }
    }
}
