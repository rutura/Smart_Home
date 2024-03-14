import QtQuick
import QtQuick.Controls
import QtQuick.Shapes
/**
 *  @brief Thermostat Dial bounded to maximum and minimum temperature.
 */
CircularSlider {
    id: slider
    width: 300
    height: 300
    startAngle: 40
    endAngle: 320
    rotation: 180
    trackWidth: 5
    trackColor: Qt.lighter("blue", 1.5)
    progressWidth: 20
    minValue: 26
    maxValue: 38
    value: 26
    progressColor: Qt.darker("blue", 1.5)
    capStyle: Qt.FlatCap

    handle: Item {
        id: item

        width: 24
        height: 24

        Shape {
            anchors.fill: parent
            rotation: 180

            ShapePath {
                strokeWidth: 1
                strokeColor: "#FF5555"
                fillColor: "#FF5555"
                startX: item.width / 2
                startY: 0

                PathLine {
                    x: 0
                    y: item.height
                }
                PathLine {
                    x: item.width
                    y: item.height
                }
                PathLine {
                    x: item.width / 2
                    y: 0
                }
            }
        }

        transform: Translate {
            x: (slider.handleWidth - width) / 2
            y: (slider.handleHeight - height) / 2
        }
    }

    Label {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -40
        rotation: 180
        font.pointSize: 26
        color: "green"
        text: Number(slider.value).toFixed(1) + "°"
    }
}
