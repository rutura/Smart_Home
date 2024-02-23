import QtQuick
import QtQuick.Controls.Material
import QtQuick.VirtualKeyboard
import QtQuick.Layouts
import "drawer"
import "living_room"
import "controls"

Window {
    id: window
    visible: true
    visibility: Window.Maximized
    minimumWidth: 1024
    minimumHeight: 720
    title: qsTr("SmartHome")

    Material.theme: Material.Light
    Material.accent: Material.Blue

    LQtDrawer {
        id: lqtDrawerId
        height: parent.height
        visible: true
    }

    RowLayout {
        anchors.fill: parent
        spacing: 10
        LQtLivingRoom {
            id: livingRoomId
            Layout.fillHeight: true
            Layout.fillWidth: true
            onNavigationClicked: {
                lqtDrawerId.visible = true;
            }
        }
        LQtControlsPanel {
            id: controlsPanelId
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
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
