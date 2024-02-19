import QtQuick
import QtQuick.Controls.Material
import QtQuick.VirtualKeyboard
import QtQuick.Layouts
import "drawer"
import "living_room"

Window {
    id: window
    visible: true
    // width: 1920
    // height: 1080
    visibility: Window.Maximized
    minimumWidth: 640
    minimumHeight: 480
    title: qsTr("SmartHome")


    RoundButton {
        Layout.alignment: Qt.AlignTop | Qt.AlignLeft
        icon.name: "navigation_toolbar_left"
        icon.source: "qrc:/assets/navigation_toolbar_left.svg"
        onClicked: {
            lqtDrawerId.visible = !lqtDrawerId.visible
        }
        z: -2
    }
    LQtDrawer{
        id: lqtDrawerId
        visible: true
    }

    LQtLivingRoom {
        id: livingRoomId
        width: parent.width / 3
        height: parent.height
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
