import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import AppConstants

PaddedRectangle {
    id: lqtIconButtonId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    radius: containerId.implicitHeight / 2.5
    border.width: 1
    border.color: "gray"
    color: "transparent"

    property alias iconSource: roundButtonId.icon.source
    property alias state1: state1TextId.text
    property alias state2: state2TextId.text
    signal clicked()

    RowLayout {
        id: containerId
        anchors.fill: parent
        Text {
            id: state1TextId
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 5
            color: Colors.primaryTextColor
        }
        Text {
            id: state2TextId
            Layout.alignment: Qt.AlignVCenter
            font.bold: true
            font.pointSize: 14
            color: Colors.primaryTextColor
        }
        RoundButton {
            id: roundButtonId
            Layout.alignment: Qt.AlignVCenter
            Layout.rightMargin: 5
            icon {
                name: "Tooling button"
                color: Colors.primaryColor
            }
            onClicked: {
                if(lqtIconButtonId.state === lqtIconButtonId.state1){
                   lqtIconButtonId.state = lqtIconButtonId.state2;
                }else {
                      lqtIconButtonId.state = lqtIconButtonId.state1;
                }
                lqtIconButtonId.clicked()
            }
        }
    }
    state: state1
    states: [
    State {
         name: state1
         PropertyChanges {
             state1TextId.font.bold: true
             state1TextId.font.pointSize: 14
             state2TextId.font.bold:false
             state2TextId.font.pointSize: 11
         }
        },
        State {
           name: state2
           PropertyChanges {
               state2TextId.font.bold: true
               state2TextId.font.pointSize: 14
               state1TextId.font.bold: false
               state1TextId.font.pointSize: 11
           }
        }

    ]
}
