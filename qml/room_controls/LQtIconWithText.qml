import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

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
        }
        Text {
            id: textId
        }
    }
}
