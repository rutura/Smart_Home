import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

PaddedRectangle {

    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    radius: 10
    Material.elevation: 2

    property alias roomNameLabel: roomNameId.text
    signal navigationClicked

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
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        lqtSetttings.visible = true;
                        rectContainerId.visible = false;
                    }
                }
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
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].humidity_display_enabled
            }
            LQtIconWithText {
                iconSource: "qrc:/assets/temperature.svg"
                text: "32°"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].temperature_display_enabled
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
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].wifi_enabled
            }
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/tv.svg"
                title: "Sony TV"
                status: "On Standby"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].tv_enabled
            }
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/cooling.svg"
                title: "Thermostat"
                status: "Cooling to 26.5°"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].thermostat_enabled
            }
            LQtAccessory {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: "qrc:/assets/dehumidifier.svg"
                title: "Air Purifier"
                status: "Off"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].air_purifier_enabled
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
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].homepod_enabled
            }
        }
        Label {
            text: "Security Cameras"
            font.pointSize: 14
            color: Colors.primaryTextColor
        }
        LQtVideoFeed {
            Layout.fillWidth: true
            Layout.fillHeight: true
            visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].security_camera_enabled
            feed: AppSettings.security_camera_video_feed
        }
        RowLayout {
            Layout.fillWidth: true
            RoundButton {
                Layout.alignment: Qt.AlignLeft
                icon {
                    name: "navigation drawer"
                    source: "qrc:/assets/navigation_toolbar_left.svg"
                    color: Colors.primaryColor
                }
                onClicked: navigationClicked()
            }
            RangeSlider {
                Layout.fillWidth: true
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].security_camera_enabled
                from: 1
                to: 100
                first.value: 25
                second.value: 75
            }
        }
    }
}
