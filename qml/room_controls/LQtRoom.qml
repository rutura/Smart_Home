import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SmartHome

PaddedRectangle {

    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    radius: 10
    Material.elevation: 2

    property alias roomNameLabel: roomNameId.text
    signal navigationClicked
    property bool videoFeedVisible: true

    color: Colors.secondaryBackgroundColor

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        anchors.margins: 5
        RowLayout {
            Text {
                text: qsTr("EDIT")
                font.pointSize: 15
                color: Colors.primaryTextColor
            }
            Item {
                Layout.fillWidth: true
            }
            LQtThemeSwitch {
                id: lqtThemeSwitch
            }
        }
        RowLayout {
            Label {
                id: roomNameId
                font.pointSize: 18
                font.bold: true
                color: Colors.primaryTextColor
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
        Label {
            text: "Accessories"
            font.pointSize: 15
            color: Colors.primaryTextColor
        }
        GridLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
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
            }
        }
        Label {
            text: "Security Cameras"
            font.pointSize: 14
            visible: videoFeedVisible
            color: Colors.primaryTextColor
        }
        LQtVideoFeed {
            Layout.fillWidth: true
            Layout.fillHeight: true
            visible: videoFeedVisible
            feed: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
        }
        RowLayout {
            RoundButton {
                icon {
                    name: "navigation drawer"
                    source: "qrc:/assets/navigation_toolbar_left.svg"
                    color: Colors.primaryColor
                }
                onClicked: navigationClicked()
            }
            RangeSlider {
                Layout.fillWidth: true
                visible: videoFeedVisible
                from: 1
                to: 100
                first.value: 25
                second.value: 75
            }
        }
    }
}
