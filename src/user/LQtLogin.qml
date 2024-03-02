import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

Popup {
    id: popupId

    anchors.centerIn: Overlay.overlay
    parent: Overlay.overlay
    dim: true
    modal: true
    focus: true
    opacity: 1.0
    closePolicy: Popup.NoAutoClose
    enter: Transition {
        NumberAnimation {
            property: "opacity"
            from: 0.0
            to: 1.0
        }
    }
    exit: Transition {
        NumberAnimation {
            property: "opacity"
            from: 1.0
            to: 0.0
        }
    }
    Overlay.modal: Item {
        Rectangle {
            color: "black"
            opacity: .9
            anchors.fill: parent
        }
    }
    background: null
    contentItem: Pane {
        id: paneId
        Material.elevation: 16
        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10
            Image {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:/assets/smart_home_100.svg"
                fillMode: Image.PreserveAspectFit
            }
            TextField {
                id: emailId
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                color: Colors.primaryTextColor
                placeholderTextColor: Qt.lighter(Colors.primaryTextColor, 1.5)
                placeholderText: qsTr("Email")
                validator: RegularExpressionValidator {
                    regularExpression: /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/
                }
                onAcceptableInputChanged: {
                    emailStatusId.visible = false;
                }
                onTextChanged: {
                    if (!emailId.accepted()) {
                        emailStatusId.visible = true;
                        emailStatusId.text = "Invalid email";
                    }
                }
                leftPadding: 30
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 50
                    radius: implicitHeight / 2
                    color: "transparent"

                    IconImage {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        source: "qrc:/assets/email_24.svg"
                    }
                    Rectangle {
                        width: parent.width - 10
                        height: 1
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        color: Colors.linkColor
                    }
                }
            }
            Text {
                id: emailStatusId
                Layout.fillWidth: true
                leftPadding: 50
                color: Colors.errorColor
                font.weight: Font.Light
            }
            TextField {
                id: usernameId
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                color: Colors.primaryTextColor
                placeholderTextColor: Qt.lighter(Colors.primaryTextColor, 1.5)
                placeholderText: qsTr("Username")
                leftPadding: 30
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 50
                    radius: implicitHeight / 2
                    color: "transparent"

                    IconImage {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        source: "qrc:/assets/user_24.svg"
                    }
                    Rectangle {
                        width: parent.width - 10
                        height: 1
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        color: Colors.linkColor
                    }
                }
            }
            Text {
                id: usernameStatusId
                Layout.fillWidth: true
                leftPadding: 50
                color: Colors.errorColor
                font.weight: Font.Light
            }
            TextField {
                id: passwordId
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                color: Colors.primaryTextColor
                placeholderTextColor: Qt.lighter(Colors.primaryTextColor, 1.5)
                placeholderText: qsTr("Password")
                leftPadding: 30
                echoMode: TextField.PasswordEchoOnEdit
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 50
                    radius: implicitHeight / 2
                    color: "transparent"

                    IconImage {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        source: "qrc:/assets/password_24.svg"
                    }
                    Rectangle {
                        width: parent.width - 10
                        height: 1
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        color: Colors.linkColor
                    }
                }
            }
            Text {
                id: passwordStatusId
                Layout.fillWidth: true
                leftPadding: 50
                color: Colors.errorColor
                font.weight: Font.Light
            }
            TextField {
                id: confirmPasswordId
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                color: Colors.primaryTextColor
                placeholderTextColor: Qt.lighter(Colors.primaryTextColor, 1.5)
                placeholderText: qsTr("Confirm password")
                leftPadding: 30
                echoMode: TextField.PasswordEchoOnEdit
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 50
                    radius: implicitHeight / 2
                    color: "transparent"

                    IconImage {
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        source: "qrc:/assets/password_24.svg"
                    }
                    Rectangle {
                        width: parent.width - 10
                        height: 1
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        color: Colors.linkColor
                    }
                }
            }
            Text {
                id: confirmPasswordStatusId
                Layout.fillWidth: true
                leftPadding: 50
                color: Colors.errorColor
                font.weight: Font.Light
            }
            Button {
                id: loginSignUpButtonId
                text: "Login"
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                onClicked: {
                    if (paneId.state === "login" && !usernameStatusId.visible && !passwordStatusId.visible) {
                        popupId.close();
                    }
                }
            }
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                ColumnLayout {
                    Label {
                        id: loginSignupTextId
                        color: Qt.lighter("blue", 1.5)
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                if (paneId.state === "login") {
                                    paneId.state = "signup";
                                } else {
                                    paneId.state = "login";
                                }
                            }
                        }
                    }
                    Rectangle {
                        implicitWidth: loginSignupTextId.implicitWidth
                        implicitHeight: 1
                        color: Colors.linkColor
                    }
                }

                Item {
                    Layout.fillWidth: true
                }
                ColumnLayout {
                    Label {
                        id: forgotPasswordId
                        text: "Forgot password?"
                        color: Qt.lighter("blue", 1.5)
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                paneId.state = "forgotPassword";
                            }
                        }
                    }
                    Rectangle {
                        implicitWidth: forgotPasswordId.implicitWidth
                        implicitHeight: 1
                        color: Colors.linkColor
                    }
                }
            }
        }
        state: "login"
        states: [
            State {
                name: "login"
                PropertyChanges {
                    // primary
                    loginSignUpButtonId.text: "Login"
                    emailId.visible: false
                    confirmPasswordId.visible: false
                    loginSignupTextId.text: "Sign Up"
                    usernameId.focus: true
                    // status items
                    emailStatusId.visible: false
                    usernameStatusId.visible: false
                    passwordStatusId.visible: false
                    confirmPasswordStatusId.visible: false
                }
            },
            State {
                name: "signup"
                PropertyChanges {
                    // primary items
                    loginSignUpButtonId.text: "Sign Up"
                    emailId.visible: true
                    confirmPasswordId.visible: true
                    loginSignupTextId.text: "Login"
                    // status items
                    emailStatusId.visible: false
                    usernameStatusId.visible: false
                    passwordStatusId.visible: false
                    confirmPasswordStatusId.visible: false
                }
            },
            State {
                name: "forgotPassword"
                PropertyChanges {
                    // primary items
                    loginSignUpButtonId.text: "Reset Password"
                    emailId.visible: true
                    usernameId.visible: false
                    confirmPasswordId.visible: false
                    passwordId.visible: false
                    loginSignupTextId.text: "Login"
                    // status items
                    emailStatusId.visible: false
                    usernameStatusId.visible: false
                    passwordStatusId.visible: false
                    confirmPasswordStatusId.visible: false
                }
            }
        ]
    }
    Component.onCompleted: {
        popupId.open();
    }
}
