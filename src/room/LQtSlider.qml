import QtQuick
import QtQuick.Controls

/**
 * @brief - time range slider that is used to interact with the video feed from the security cameras
 */
/*REQUIRED:  define width*/
Slider {
    id: control
    value: 0.5

    background: Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: control.width
        implicitHeight: 4
        width: control.availableWidth
        height: implicitHeight
        radius: 2
        color: "#bdbebf"

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            color: "#21be2b"
            radius: 2
        }
    }

    // handle: Rectangle {
    //     x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
    //     y: control.topPadding + control.availableHeight / 2 - height / 2
    //     implicitWidth: 26
    //     implicitHeight: 26
    //     radius: 13
    //     color: control.pressed ? "#f0f0f0" : "#f6f6f6"
    //     border.color: "#bdbebf"
    // }
}
