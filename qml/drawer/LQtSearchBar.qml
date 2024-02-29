import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import SmartHome

// import QtQuick.Controls.Material

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

    // border.width: 1
    // border.color: Colors.primaryFrameColor
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
            icon {
                name: "microphone"
                source: "qrc:/assets/microphone.svg"
                color: Colors.primaryColor
            }
            onClicked: {
                console.log("[TODO] Microphone Clicked");
            }
        }
        TextField {
            id: searchTextFieldId
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Colors.primaryTextColor
            placeholderTextColor: Colors.primaryHintTextColor
            placeholderText: qsTr("Search")
        }
        RoundButton {
            id: searchId
            Layout.alignment: Qt.AlignRight
            icon {
                name: "search"
                source: "qrc:/assets/search.svg"
                color: Colors.primaryColor
            }
            onClicked: search(searchTextFieldId.text)
        }
    }
}
