import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Pane {
    id: control
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            LQtIconWithTexts {
                Layout.alignment: Qt.AlignVCenter
                iconSource: "qrc:/assets/cooling.svg"
                topic: "Thermostat"
                subtopic: "Auto cooling"
            }
            Item {
                Layout.fillWidth: true
            }
            LQtIconsButton {
                Layout.alignment: Qt.AlignVCenter
                state1: "On"
                state2: "Off"
                iconSource: "qrc:/assets/power.svg"
            }
        }
        LQtDial {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            width: containerId.implicitWidth
            inputMode: Dial.Circular
        }
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter
            LQtIconWithTexts {
                iconSource: "qrc:/assets/fan.svg"
                topic: "Fan Speed"
                subtopic: "3 Level - Off"
            }
            LQtIconWithTexts {
                iconSource: "qrc:/assets/time.svg"
                topic: "Timer"
                subtopic: "7 Hours - Off"
            }
            LQtIconWithTexts {
                iconSource: "qrc:/assets/shine.svg"
                topic: "Auto Mode"
                subtopic: "On"
            }
        }
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            LQtControlsCard {
                id: lqtControlsCardId
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            LQtWeeklyPowerCard {
                id: lqtWeeklyPowerCardId
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
