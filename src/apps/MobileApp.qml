import QtQuick
import QtQuick.Controls.Material
// import QtQuick.VirtualKeyboard
import QtQuick.Layouts
import AppConstants
import AppDrawer
import AppRoom
import AppHWUsage
import AppUser
import AppUtils
import AppSettings
import LQtServices
/**
 * @brief Compiles all the components into a mobile view(stack layout)
 * - Also uses material theme
 */
Window {
    id: window
    visible: true
    visibility: Window.Maximized
    title: qsTr("SmartHome")

    Material.theme: Material.Light
    Material.accent: Material.Blue

    ToastManager {
        id: toast
    }
    LQtHomePodState{
        id: lqtHomePodStateId
        homePodState: LQtHomePodState.STOPPED
    }
    LQtThermostatState{
        id: lqtThermostatId
        isOn: false
        fanLevel: LQtThermostatState.LEVEL_1
        targetTemperature: 28.5
        fanMode: LQtThermostatState.AUTO_MODE
    }

    LQtDriverService{
        id: lqtDriverServiceId
        lqtHomePodState: lqtHomePodStateId
        lqtThermostatState: lqtThermostatId
        temperature: 26.5
        humidity: 72
        airPurifierState: true
        tvState: true
        wifiState: true
    }

    PaddedRectangle {
        id: mainContainerId
        anchors.fill: parent
        color: "#EAEAEA"

        LQtDrawer {
            id: lqtDrawerId
            height: parent.height
            visible: true
            onMenuItemSelected: index => {
                mainContainerId.state = index;
                AppSettings.room_state = index;
            }
        }
        LQtLogin {
            id: loginId
            implicitHeight: parent.height
            implicitWidth: parent.width
        }
        LQtSettings {
            id: lqtSetttings
            visible: false
            anchors.fill: parent
        }
        ColumnLayout {
            id: rectContainerId
            anchors.fill: parent
            StackLayout {
                id: stackLayoutId
                Layout.fillHeight: true
                Layout.fillWidth: true
                currentIndex: tabBarId.currentIndex
                LQtRoom {
                    id: roomId
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.margins: 5
                    onNavigationClicked: {
                        lqtDrawerId.visible = true;
                    }
                }
                LQtControlsPanel {
                    id: controlsPanelId
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.margins: 5
                }
            }
            TabBar {
                id: tabBarId
                Layout.fillWidth: true
                TabButton {
                    text: qsTr("Home")
                }
                TabButton {
                    text: qsTr("Controls")
                }
            }
        }
        state: AppSettings.room_state
        states: [
            State {
                name: AppSettings.entrance_index.toString()
                PropertyChanges {
                    roomId.roomNameLabel: "Entrance"
                }
            },
            State {
                name: AppSettings.backyard_index.toString()
                PropertyChanges {
                    roomId.roomNameLabel: "Backyard"
                }
            },
            State {
                name: AppSettings.living_room_index.toString()
                PropertyChanges {
                    roomId.roomNameLabel: "Living Room"
                }
            },
            State {
                name: AppSettings.hallway_index.toString()
                PropertyChanges {
                    roomId.roomNameLabel: "HallWay"
                }
            },
            State {
                name: AppSettings.bedroom_index.toString()
                PropertyChanges {
                    roomId.roomNameLabel: "Bedroom"
                }
            },
            State {
                name: AppSettings.front_door_index.toString()
                PropertyChanges {
                    roomId.roomNameLabel: "Front Door"
                }
            }
        ]
    }
    /*
    InputPanel {
        id: inputPanel
        height: window.implicitHeight / 3
        width: window.implicitWidth

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.implicitHeight - inputPanel.implicitHeight
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
    */
}
