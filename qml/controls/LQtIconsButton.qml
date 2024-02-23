import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    radius: containerId.implicitHeight / 8
    border.width: 1
    border.color: "gray"
    color: "transparent"

    property alias iconSource: roundButtonId.icon.source
    property alias state1: state1TextId.text
    property alias state2: state2TextId.text
    signal iconClicked

    RowLayout {
        id: containerId
        anchors.fill: parent
        Text {
            id: state1TextId
        }
        Text {
            id: state2TextId
        }
        RoundButton {
            id: roundButtonId
            icon.name: "tooling button"
            onClicked: iconClicked()
        }
    }
}
