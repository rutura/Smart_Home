import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    property alias iconName: roundButtonId.icon.name
    property alias iconSource: roundButtonId.icon.source
    property alias text: textId.text

    implicitWidth: containerId.implicitWidth
    implicitHeight: containerId.implicitHeight

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RoundButton {
            id: roundButtonId
            Layout.alignment: Qt.AlignHCenter
        }
        Label {
            id: textId
            Layout.alignment: Qt.AlignHCenter
            wrapMode: Text.Wrap
        }
    }
}
