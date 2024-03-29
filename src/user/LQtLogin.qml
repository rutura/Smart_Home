import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants
import AppUtils

/**
 * @brief A login interface pop-up with the following features:
     * - User sign up
     * - User login
     * - User forgot password
     * - Interacts with a local user database.
 * - Signup, login and forgot password features are managed using states. Relevant fields in that state are shown otherwise hidden.
 * - Integrated status/error reporting and handling using toasts and labels
 */
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
    contentItem: PaddedRectangle {
        id: paneId
        Material.elevation: 16
        color: Colors.primaryBackgroundColor
        radius: thisContainerId.implicitWidth / 8
        ColumnLayout {
            id: thisContainerId
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
                    switch (paneId.state) {
                    case "login":
                        if (usernameId.text === '' || passwordId.text === '') {
                            usernameStatusId.visible = true;
                            passwordId.visible = true;
                            usernameStatusId.text = "Username or password is empty";
                            passwordStatusId.text = "Username or password is empty";
                        } else {
                            let result = UserDatabase.getUserByNameAndPassword(usernameId.text, passwordId.text);
                            if (result.rows.length > 0) {
                                popupId.close();
                            } else {
                                toast.show("Wrong username or password", 1000);
                            }
                        }
                        break;
                    case "signup":
                        if (usernameId.text === '' || passwordId.text === '' || confirmPasswordId.text === '' || emailId.text === '') {
                            toast.show("At least one of the fields is empty", 3000);
                            break;
                        }
                        if (passwordId.text !== confirmPasswordId.text) {
                            confirmPasswordStatusId.visible = true;
                            confirmPasswordStatusId.text = "Password not equal";
                            break;
                        }
                        let result = UserDatabase.newUser(usernameId.text, emailId.text, passwordId.text);
                        if (typeof result.insertId === "undefined") {
                            toast.show("Failed to register user", 3000);
                        }
                        toast.show("Registration successful", 3000);
                        break;
                    case "forgotPassword":
                        break;
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
