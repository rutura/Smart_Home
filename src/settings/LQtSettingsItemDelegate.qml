import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

Item {
    // width: ListView.view.width
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property bool expanded: false
    height: expanded ? implicitHeight : 0
    Behavior on height {
        NumberAnimation {
            duration: 200
        }
    }
    clip: true
    RowLayout {
        id: containerId
        anchors.fill: parent
        anchors.leftMargin: 20
        Text {
            text: model.name
            color: Colors.primaryTextColor
            font.pointSize: 14
            font.bold: true
        }
        Item {
            Layout.fillWidth: true
        }
        Switch {
            checked: model.enabled()
            onToggled: {
                model.enabled(!model.enabled());
            }
        }
    }
}
