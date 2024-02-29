import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SmartHome

Item {
    property alias iconSource: roundButtonId.icon.source
    property alias text: textId.text

    implicitWidth: containerId.implicitWidth
    implicitHeight: containerId.implicitHeight

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RoundButton {
            id: roundButtonId
            icon {
                name: "Drawer button"
                color: Colors.primaryColor
            }
            Layout.alignment: Qt.AlignHCenter
        }
        Label {
            id: textId
            Layout.alignment: Qt.AlignHCenter
            color: Colors.primaryTextColor
            wrapMode: Text.Wrap
        }
    }
}
