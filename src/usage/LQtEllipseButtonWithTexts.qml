import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

/**
 * @brief -
 */
Item {
    id: lqtEllipseButtonWithTextId

    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    property alias iconSource: iconId.icon.source
    property alias topic: topicId.text
    property alias subtopic: subtopicId.text
    property alias checked: iconId.checked
    signal clicked()
    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RoundButton {
            id: iconId
            Layout.alignment: Qt.AlignHCenter
            icon {
                name: "buttonIcon"
                color: iconId.checked ? Colors.linkColor: Colors.primaryColor
            }
            checkable: true
            onClicked: lqtEllipseButtonWithTextId.clicked()
        }
        Label {
            id: topicId
            Layout.alignment: Qt.AlignHCenter
            font.bold: true
            color: Colors.primaryTextColor
        }
        Label {
            id: subtopicId
            Layout.alignment: Qt.AlignHCenter
            color: Colors.primaryTextColor
        }
    }
}
