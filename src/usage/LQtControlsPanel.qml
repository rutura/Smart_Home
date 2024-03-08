import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import AppConstants

PaddedRectangle {
    id: control
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    radius: 10

    Material.elevation: 2

    color: Colors.secondaryBackgroundColor

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        anchors.margins: 5
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            LQtIconWithTexts {
                Layout.alignment: Qt.AlignVCenter
                iconSource: "qrc:/assets/cooling.svg"
                topic: "Thermostat"
                subtopic: "Auto cooling"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
            }
            Item {
                Layout.fillWidth: true
            }
            LQtIconsButton {
                Layout.alignment: Qt.AlignVCenter
                state1: "On"
                state2: "Off"
                iconSource: "qrc:/assets/power.svg"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
            }
        }

        LQtDial {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
        }
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter
            LQtEllipseButtonWithTexts {
                iconSource: "qrc:/assets/fan.svg"
                topic: "Fan Speed"
                subtopic: "3 Level - Off"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
            }
            LQtEllipseButtonWithTexts {
                iconSource: "qrc:/assets/time.svg"
                topic: "Timer"
                subtopic: "7 Hours - Off"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
            }
            LQtEllipseButtonWithTexts {
                iconSource: "qrc:/assets/shine.svg"
                topic: "Auto Mode"
                subtopic: "On"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
            }
        }
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            LQtControlsCard {
                id: lqtControlsCardId
                Layout.fillWidth: true
                Layout.fillHeight: true
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].wifi_display_enabled
            }
            LQtWeeklyPowerCard {
                id: lqtWeeklyPowerCardId
                Layout.fillWidth: true
                Layout.fillHeight: true
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].power_usage_display_enabled
            }
        }
    }
}
