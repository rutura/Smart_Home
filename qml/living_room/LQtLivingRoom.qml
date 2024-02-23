import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material.impl

Pane {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        Text {
            Layout.fillWidth: true
            text: qsTr("EDIT")
            color: Material.primaryTextColor
        }
        RowLayout {
            Layout.fillWidth: true
            Text {
                text: "Living Room"
                font.pointSize: 18
                font.bold: true
            }
            Item {
                Layout.fillWidth: true
            }
            LQtIconWithText {
                iconSource: "qrc:/assets/humidity.svg"
                text: "72%"
            }
            LQtIconWithText {
                iconSource: "qrc:/assets/temperature.svg"
                text: "32°"
            }
        }
        Text {
            text: "Accessories"
            Layout.fillWidth: true
        }
        GridLayout {
            Layout.fillWidth: true
            columns: 3
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/wifi.svg"
                showInfo: true
                title: "Nest Wi-Fi"
                status: "Connected"
            }
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/tv.svg"
                title: "Sony TV"
                status: "On Standby"
            }
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/cooling.svg"
                title: "Thermostat"
                status: "Cooling to 26.5°"
            }
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/dehumidifier.svg"
                title: "Air Purifier"
                status: "Off"
            }
            LQtAccessoryWithMusic {
                Layout.fillWidth: true
                Layout.fillHeight: true
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
            Layout.fillWidth: true
            feed: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        }
        RangeSlider {
            Layout.fillWidth: true
            from: 1
            to: 100
            first.value: 25
            second.value: 75
        }
    }
}
