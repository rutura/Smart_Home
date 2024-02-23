import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

/**
  TODO
  - support auto-completion
  - support search results display
  **/
PaddedRectangle {
    id: searchBarId
    implicitHeight: containerId.implicitHeight + containerId.searchMargins * 2
    implicitWidth: containerId.implicitWidth + containerId.searchMargins * 2
    radius: containerId.implicitWidth / 2

    border.width: 1
    border.color: "gray"
    color: "transparent"
    signal search(var text)
    signal microphone

    RowLayout {
        id: containerId
        readonly property real searchMargins: 2
        anchors.fill: parent
        anchors.margins: searchMargins

        RoundButton {
            id: microphoneId
            Layout.alignment: Qt.AlignLeft
            icon.name: "microphone"
            icon.source: "qrc:/assets/microphone.svg"
            onClicked: {
                console.log("[TODO] Microphone Clicked");
            }
        }
        TextField {
            id: searchTextFieldId
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Material.primaryColor
            placeholderTextColor: Material.primaryColor
            placeholderText: qsTr("Search")
        }
        RoundButton {
            id: searchId
            Layout.alignment: Qt.AlignRight
            icon.name: "search"
            icon.source: "qrc:/assets/search.svg"
            onClicked: search(searchTextFieldId.text)
        }
    }
}
