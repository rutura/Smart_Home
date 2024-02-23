import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

Drawer {
    id: drawerId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RowLayout {
            Layout.fillWidth: true
            RoundButton {
                icon.name: "navigation_toolbar_left"
                icon.source: "qrc:/assets/navigation_toolbar_left.svg"
                onClicked: {
                    drawerId.visible = !drawerId.visible;
                }
            }
            Item {
                Layout.fillWidth: true
            }
            RoundButton {
                icon.name: "home"
                icon.source: "qrc:/assets/home.svg"
            }
            RoundButton {
                id: plusId
                icon.name: "plus"
                icon.source: "qrc:/assets/plus.svg"
            }
        }
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("YuHang's Home")
            font.bold: true
            font.pointSize: 20
        }
        LQtSearchBar {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            onSearch: text => {
                console.log("Search Text");
            }
        }
        Text {
            Layout.alignment: Qt.AlignLeft
            text: qsTr("SCENES")
        }
        RowLayout {
            Layout.fillWidth: true
            LQtIconButtonWithText {
                iconName: "music"
                iconSource: "qrc:/assets/music.svg"
                text: "Listen to Music"
            }
            LQtIconButtonWithText {
                iconName: "relaxing"
                iconSource: "qrc:/assets/relaxing.svg"
                text: "Relaxing"
            }
            LQtIconButtonWithText {
                iconName: "arriving_home"
                iconSource: "qrc:/assets/arriving_home.svg"
                text: "Arrive Home"
            }
            LQtIconButtonWithText {
                iconName: "GoodNight"
                iconSource: "qrc:/assets/moon.svg"
                text: "Good Night"
            }
        }
        Text {
            Layout.alignment: Qt.AlignLeft
            text: qsTr("ROOMS")
        }
        ColumnLayout {
            Layout.fillWidth: true
            LQtMenuItem {
                text: "Entrance"
            }
            LQtMenuItem {
                text: "Backyard"
            }
            LQtMenuItem {
                text: "Living Room"
            }
            LQtMenuItem {
                text: "Hallway"
            }
            LQtMenuItem {
                text: "Bedroom"
            }
            LQtMenuItem {
                text: "Front Door"
            }
        }
        Text {
            Layout.alignment: Qt.AlignLeft
            text: qsTr("AUTOMATIONS")
        }
        ColumnLayout {
            Layout.fillHeight: true
            LQtAutomatedItem {
                topic: "10:25am - Daily"
                message: "6 Accessories, 2 Scenes"
                icon: "qrc:/assets/item.svg"
            }
            LQtAutomatedItem {
                topic: "7:30pm - Daily"
                message: "12 Items"
                icon: "qrc:/assets/item.svg"
            }
        }
        LQtProfile {
            username: "7ahang"
            role: "Member Part Access"
            profile: "qrc:/assets/user.svg"
        }
    }
}
