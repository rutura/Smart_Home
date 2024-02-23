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
            Layout.fillWidth: true
        }
        ColumnLayout {
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
            Slider {
                id: musicProgressId
                Layout.alignment: Qt.AlignHCenter
            }
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Text {
                    id: currentTimeId
                }
                Item {
                    Layout.fillWidth: true
                }

                Text {
                    id: songDurationId
                }
            }
        }
    }
}
