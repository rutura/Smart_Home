import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SmartHome

Drawer {
    id: drawerId

    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    signal menuItemSelected(real index)

    property var menuChildren: [entranceId, backyardId, livingroomId, hallwayId, bedroomId, frontdoorId]
    PaddedRectangle {
        anchors {
            top: drawerId.Top
            topMargin: 0
            bottom: drawerId.Bottom
            bottomMargin: 0
        }
        color: Colors.secondaryBackgroundColor
        height: parent.height
        ColumnLayout {
            id: containerId
            anchors.fill: parent
            RowLayout {
                Layout.fillWidth: true
                RoundButton {
                    icon {
                        name: "navigation_toolbar_left"
                        source: "qrc:/assets/navigation_toolbar_left.svg"
                        color: Colors.primaryColor
                    }
                    onClicked: {
                        drawerI16d.visible = !drawerId.visible;
                    }
                }
                Item {
                    Layout.fillWidth: true
                }
                RoundButton {
                    icon {
                        name: "home"
                        source: "qrc:/assets/home.svg"
                        color: Colors.primaryColor
                    }
                }
                RoundButton {
                    id: plusId
                    icon {
                        name: "plus"
                        source: "qrc:/assets/plus.svg"
                        color: Colors.primaryColor
                    }
                }
            }
            Label {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("YuHang's Home")
                font.bold: true
                font.pointSize: 18
                color: Colors.primaryTextColor
            }
            LQtSearchBar {
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                onSearch: text => {
                    console.log("Search Text");
                }
            }
            Label {
                Layout.alignment: Qt.AlignLeft
                text: qsTr("SCENES")
                color: Colors.primaryTextColor
            }
            RowLayout {
                Layout.fillWidth: true
                LQtIconButtonWithText {
                    iconSource: "qrc:/assets/music.svg"
                    text: "Listen to Music"
                }
                LQtIconButtonWithText {
                    iconSource: "qrc:/assets/relaxing.svg"
                    text: "Relaxing"
                }
                LQtIconButtonWithText {
                    iconSource: "qrc:/assets/arriving_home.svg"
                    text: "Arrive Home"
                }
                LQtIconButtonWithText {
                    iconSource: "qrc:/assets/moon.svg"
                    text: "Good Night"
                }
            }
            Label {
                Layout.alignment: Qt.AlignLeft
                text: qsTr("ROOMS")
                color: Colors.primaryTextColor
            }
            ColumnLayout {
                id: menuContainerId
                Layout.fillWidth: true
                LQtMenuItem {
                    id: entranceId
                    Layout.fillWidth: true
                    text: "Entrance"
                    onItemSelected: {
                        menuItemSelected(0);
                        drawerId.close();
                        menuChildren.forEach(item => {
                                item.color = Colors.tertiaryBackgroundColor;
                            });
                        entranceId.color = Colors.containerColor;
                    }
                }
                LQtMenuItem {
                    id: backyardId
                    Layout.fillWidth: true
                    text: "Backyard"
                    onItemSelected: {
                        menuItemSelected(1);
                        drawerId.close();
                        menuChildren.forEach(item => {
                                item.color = Colors.tertiaryBackgroundColor;
                            });
                        backyardId.color = Colors.containerColor;
                    }
                }
                LQtMenuItem {
                    id: livingroomId
                    Layout.fillWidth: true
                    text: "Living Room"
                    onItemSelected: {
                        menuItemSelected(2);
                        drawerId.close();
                        menuChildren.forEach(item => {
                                item.color = Colors.tertiaryBackgroundColor;
                            });
                        livingroomId.color = Colors.containerColor;
                    }
                }
                LQtMenuItem {
                    id: hallwayId
                    Layout.fillWidth: true
                    text: "Hallway"
                    onItemSelected: {
                        menuItemSelected(3);
                        drawerId.close();
                        menuChildren.forEach(item => {
                                item.color = Colors.tertiaryBackgroundColor;
                            });
                        hallwayId.color = Colors.containerColor;
                    }
                }
                LQtMenuItem {
                    id: bedroomId
                    Layout.fillWidth: true
                    text: "Bedroom"
                    onItemSelected: {
                        menuItemSelected(4);
                        drawerId.close();
                        menuChildren.forEach(item => {
                                item.color = Colors.tertiaryBackgroundColor;
                            });
                        bedroomId.color = Colors.containerColor;
                    }
                }
                LQtMenuItem {
                    id: frontdoorId
                    Layout.fillWidth: true
                    text: "Front Door"
                    onItemSelected: {
                        menuItemSelected(5);
                        drawerId.close();
                        menuChildren.forEach(item => {
                                item.color = Colors.tertiaryBackgroundColor;
                            });
                        frontdoorId.color = Colors.containerColor;
                    }
                }
            }
            Label {
                Layout.alignment: Qt.AlignLeft
                text: qsTr("AUTOMATIONS")
                color: Colors.primaryTextColor
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
}
