import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import AppConstants

PaddedRectangle {
    id: controlId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    color: Colors.primaryBackgroundColor

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        RowLayout {
            Layout.fillWidth: true
            RoundButton {
                Layout.alignment: Qt.AlignBottom | Qt.AlignLeft
                icon {
                    name: "home"
                    source: "qrc:/assets/home.svg"
                    color: Colors.primaryColor
                }
                onClicked: {
                    lqtSetttings.visible = false;
                    rectContainerId.visible = true;
                }
            }
            Item {
                Layout.fillWidth: true
            }

            LQtProfileImage {
                // Layout.alignment: Qt.AlignHCenter
                source: "qrc:/assets/user.svg"
            }
            Item {
                Layout.fillWidth: true
            }
        }
        ListView {
            id: view
            Layout.fillHeight: true
            Layout.fillWidth: true

            property var collapsed: ({})
            focus: true
            clip: true

            model: LQtSettingsModel {
                id: settingsModelId
            }

            delegate: LQtSettingsItemDelegate {
                width: ListView.view.width
                expanded: view.isSectionExpanded(model.group)
            }
            section {
                property: "group"
                criteria: ViewSection.FullString

                delegate: LQtSettingsSectionDelegate {
                    id: sectionDelegateId
                    width: ListView.view.width
                    text: section
                    enabled: {
                        let flag = false;
                        for (var i = 0; i < settingsModelId.count; ++i) {
                            if (settingsModelId.get(i).group === section) {
                                flag = (flag || settingsModelId.get(i).enabled());
                            }
                        }
                        return flag;
                    }
                    onToggled: {
                        for (var i = 0; i < settingsModelId.count; ++i) {
                            if (settingsModelId.get(i).group === section) {
                                settingsModelId.get(i).enabled(sectionDelegateId.enabled);
                            }
                        }
                    }
                    onClicked: view.toggleSection(section)
                }
            }

            function isSectionExpanded(section) {
                return !(section in collapsed);
            }

            function showSection(section) {
                delete collapsed[section];
                /*emit*/ collapsedChanged();
            }

            function hideSection(section) {
                collapsed[section] = true;
                /*emit*/ collapsedChanged();
            }

            function toggleSection(section) {
                if (isSectionExpanded(section)) {
                    hideSection(section);
                } else {
                    showSection(section);
                }
            }
        }
    }
}
