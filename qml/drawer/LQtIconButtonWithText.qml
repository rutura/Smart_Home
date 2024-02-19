import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    property alias iconName: roundButtonId.icon.name
    property alias iconSource: roundButtonId.icon.source
    property alias text: textId.text

    implicitWidth: containerId.implicitWidth
    implicitHeight: containerId.implicitHeight
    Layout.fillWidth: true

    ColumnLayout {
        id: containerId
        RoundButton {
            id: roundButtonId
            Layout.alignment: Qt.AlignHCenter
        }
        Text {
            id: textId
            Layout.alignment: Qt.AlignHCenter
            width: roundButtonId.implicitWidth * 1.5
            wrapMode: Text.Wrap
        }
    }
}
