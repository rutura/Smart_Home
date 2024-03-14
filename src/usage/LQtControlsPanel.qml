import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import AppConstants
import LQtServices

/**
 * @brief Integrates controls and displays. Contains
 * - Power Usage in a weekly basis
 * - WiFI and Power state
 * - Thermostat controls(Dial and mode buttons)
 */
PaddedRectangle {
    id: control
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    radius: 10

    Material.elevation: 2

    color: Colors.secondaryBackgroundColor

    readonly property string auto_mode_state: "auto_mode"
    readonly property string timer_mode_state: "timer_mode"

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
                id: lqtIconButtonId
                Layout.alignment: Qt.AlignVCenter
                state1: "On"
                state2: "Off"
                iconSource: "qrc:/assets/power.svg"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
                onClicked: {
                    var temp_flag = true;
                    if(lqtIconButtonId.state === lqtIconButtonId.state2) {
                        temp_flag = false;
                    }
                    lqtThermostatId.isOn = temp_flag;
                    lqtDriverServiceId.lqtThermostatState = lqtThermostatId;
                }
            }
        }

        LQtDial {
            id: lqtDialId
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
            value: lqtThermostatId.targetTemperature
            onValueChanged: {
                lqtThermostatId.targetTemperature = lqtDialId.value;
                lqtDriverServiceId.lqtThermostatState = lqtThermostatId;
            }
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
                id: timerModeId
                iconSource: "qrc:/assets/time.svg"
                topic: "Timer"
                subtopic: "7 Hours - Off"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
                checked: lqtThermostatId.fanMode === LQtThermostatState.TIMER
                onClicked: {
                    if(lqtThermostatId.fanMode === LQtThermostatState.TIMER){
                        lqtThermostatId.fanMode === LQtThermostatState.AUTO_MODE
                        control.state = control.auto_mode_state
                        lqtDriverServiceId.lqtThermostatState = lqtThermostatId
                    }
                }
            }
            LQtEllipseButtonWithTexts {
                id: autoModeId
                iconSource: "qrc:/assets/shine.svg"
                topic: "Auto Mode"
                subtopic: "On"
                visible: AppSettings.roomProperties[parseInt(AppSettings.room_state)].fan_enabled
                checked: lqtThermostatId.fanMode === LQtThermostatState.AUTO_MODE
                onClicked: {
                    if(lqtThermostatId.fanMode === LQtThermostatState.AUTO_MODE){
                        lqtThermostatId.fanMode === LQtThermostatState.TIMER
                        control.state = control.timer_mode_state
                        lqtDriverServiceId.lqtThermostatState = lqtThermostatId
                    }
                }
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
    state: lqtThermostatId.fanMode === LQtThermostatState.AUTO_MODE ? auto_mode_state: timer_mode_state
    states: [
    State {
            name: auto_mode_state
            PropertyChanges {
                timerModeId.checked: false
                autoModeId.checked: true
            }
        },
        State {
            name: timer_mode_state
            PropertyChanges {
                timerModeId.checked: true
                autoModeId.checked: false
            }
        }

    ]
}
