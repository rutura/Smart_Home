import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Rectangle {
   implicitHeight: containerId.implicitHeight
   implicitWidth: containerId.implicitWidth
   Layout.fillWidth: true
   color: "transparent"
   property alias text: menuTextId.text
   RowLayout {
       id: containerId
       Layout.fillWidth: true
       IconImage {
           name:"menu item"
          source: "qrc:/assets/item.svg"
       }
       Text {
           id: menuTextId
           font.bold: true
           font.pointSize: 16
       }
   }
   MouseArea {
       anchors.fill: parent
       onClicked: {
           console.log("Clicked")
       }
       hoverEnabled: true
   }
}
