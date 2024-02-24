import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    radius: containerId.implicitHeight / 2.5
    border.width: 1
    border.color: "gray"
    color: "transparent"

    property alias iconSource: roundButtonId.icon.source
    property alias state1: state1TextId.text
    property alias state2: state2TextId.text
    signal iconClicked

    property bool isIconClicked: false

    RowLayout {
        id: containerId
        anchors.fill: parent
        Text {
            id: state1TextId
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 5
        }
        Text {
            id: state2TextId
            Layout.alignment: Qt.AlignVCenter
            font.bold: true
            font.pointSize: 14
        }
        RoundButton {
            id: roundButtonId
            Layout.alignment: Qt.AlignVCenter
            Layout.rightMargin: 5
            icon.name: "tooling button"
            onClicked: {
                isIconClicked = !isIconClicked;
                iconClicked();
            }
        }
    }
    Connections {
        target: roundButtonId
        function onClicked() {
            if (isIconClicked) {
                state1TextId.font.bold = true;
                state1TextId.font.pointSize = 14;
                state2TextId.font.bold = false;
                state2TextId.font.pointSize = 11;
            } else {
                state2TextId.font.bold = true;
                state2TextId.font.pointSize = 14;
                state1TextId.font.bold = false;
                state1TextId.font.pointSize = 11;
            }
        }
    }
}
