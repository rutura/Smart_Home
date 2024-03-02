import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

Item {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property alias username: usernameId.text
    property alias role: roleId.text
    property alias profile: iconId.source

    RowLayout {
        id: containerId
        anchors.fill: parent
        IconImage {
            id: iconId
            name: "userProfile"
            color: Colors.primaryColor
        }
        ColumnLayout {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft
            Text {
                id: usernameId
                font.pointSize: 20
                font.bold: true
                color: Colors.primaryTextColor
            }
            Text {
                id: roleId
                font.italic: true
                color: Colors.primaryTextColor
            }
        }
        IconImage {
            Layout.alignment: Qt.AlignRight
            fillMode: Image.PreserveAspectFit
            source: "qrc:/assets/right.svg"
            name: "right carret"
            color: Colors.primaryColor
        }
    }
}
