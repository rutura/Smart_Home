import  QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Pane {
    width: parent.width
    height: parent.height
    Material.elevation: 2

    ColumnLayout{
        id: containerId
        anchors.fill: parent
        Text {
            text: qsTr("EDIT")
            color: Material.primaryTextColor
        }
        RowLayout{
            Layout.fillWidth: true
            Text{
                text: "Living Room"
                font.pointSize: 18
                font.bold: true
            }
            Item{
                Layout.fillWidth: true
            }
            LQtIconWithText{
                iconSource: "qrc:/assets/humidity.svg"
                text: "72%"
            }
            LQtIconWithText{
                iconSource: "qrc:/assets/temperature.svg"
                text: "32°"
            }
        }
        Text {
            text: "Accessories"
        }
        GridLayout{
            Layout.fillWidth: true
            columns: 3
            LQtAccessory{
                iconSource: "qrc:/assets/wifi.svg"
                showInfo: true
                title: "Nest Wi-Fi"
                status: "Connected"
            }
            LQtAccessory{
                iconSource: "qrc:/assets/tv.svg"
                title: "Sony TV"
                status: "On Standby"
            }
            LQtAccessory{
                iconSource: "qrc:/assets/cooling.svg"
                title: "Thermostat"
                status: "Cooling to 26.5°"
            }
            LQtAccessory{
                iconSource: "qrc:/assets/dehumidifier.svg"
                title: "Air Purifier"
                status: "Off"
            }
            LQtAccessoryWithMusic {
                Layout.columnSpan: 2
                iconSource: "qrc:/assets/ipod.svg"
                title: "Homepod"
                status: "Not playing"
                currentSong: "Arpeggi"
                currentArtist: "Kelly Lee Owens"
                currentTime: "1:27"
                songDuration: "3:30"
            }
        }
        Text {
            text: "Security Cameras"
            font.pointSize: 14
        }
        LQtVideoFeed {
            feed: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        }
    }
}
