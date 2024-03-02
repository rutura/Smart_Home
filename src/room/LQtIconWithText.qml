import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

Item {
    implicitHeight: containerId.height
    implicitWidth: containerId.width

    property alias iconSource: iconId.source
    property alias text: textId.text

    RowLayout {
        id: containerId
        IconImage {
            id: iconId
            name: "Icon"
            color: Colors.primaryColor
        }
        Text {
            id: textId
            color: Colors.primaryTextColor
        }
    }
}
