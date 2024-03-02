import QtQuick
import QtQuick.Controls.Material
import QtQuick.VirtualKeyboard
import QtQuick.Layouts
import AppConstants
import AppDrawer
import AppRoom
import AppHWUsage
import AppUser

Window {
    id: window
    visible: true
    // visibility: Window.Maximized
    minimumWidth: 1024
    minimumHeight: 720
    title: qsTr("SmartHome")

    Material.theme: Colors.getCurrentTheme()
    Material.accent: Material.Blue

    PaddedRectangle {
        id: mainContainerId
        anchors.fill: parent
        color: Colors.primaryBackgroundColor

        LQtDrawer {
            id: lqtDrawerId
            height: parent.height
            visible: true
            onMenuItemSelected: index => {
                mainContainerId.state = index;
            }
        }
        LQtLogin {
            id: loginId
            implicitHeight: parent.height - (2 * parent.height / 8)
            implicitWidth: parent.width / 2
        }

        RowLayout {
            anchors.fill: parent
            spacing: 10
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

        state: "2"
        states: [
            State {
                name: "0"
                PropertyChanges {
                    target: roomId
                    roomNameLabel: "Entrance"
                }
            },
            State {
                name: "1"
                PropertyChanges {
                    target: roomId
                    roomNameLabel: "Backyard"
                }
            },
            State {
                name: "2"
                PropertyChanges {
                    target: roomId
                    roomNameLabel: "Living Room"
                }
            },
            State {
                name: "3"
                PropertyChanges {
                    target: roomId
                    roomNameLabel: "HallWay"
                }
            },
            State {
                name: "4"
                PropertyChanges {
                    target: roomId
                    roomNameLabel: "Bedroom"
                    videoFeedVisible: false
                }
            },
            State {
                name: "5"
                PropertyChanges {
                    target: roomId
                    roomNameLabel: "Front Door"
                }
            }
        ]
    }

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
}
