cmake_minimum_required(VERSION 3.16)

project(SmartHome VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick Multimedia)

qt_standard_project_setup()

qt_add_executable(appSmartHome
    src/main.cpp
)

qt_add_qml_module(appSmartHome
    URI SmartHome
    VERSION 1.0
    QML_FILES
        qml/Main.qml
        #drawer
        qml/drawer/LQtDrawer.qml
        qml/drawer/LQtIconButtonWithText.qml
        qml/drawer/LQtMenuItem.qml
        qml/drawer/LQtAutomatedItem.qml
        qml/drawer/LQtProfile.qml
        qml/drawer/LQtSearchBar.qml
        #living room
        qml/living_room/LQtLivingRoom.qml
        qml/living_room/LQtIconWithText.qml
        qml/living_room/LQtAccessory.qml
        qml/living_room/LQtAccessoryWithMusic.qml
        qml/living_room/LQtVideoFeed.qml
        qml/living_room/LQtFeedInscribed.qml
        #hw_controls
        qml/hw_controls/LQtControlsPanel.qml
        qml/hw_controls/LQtIconsButton.qml
        qml/hw_controls/LQtEllipseButtonWithTexts.qml
        qml/hw_controls/LQtControlsCard.qml
        qml/hw_controls/LQtWeeklyPowerCard.qml
        qml/hw_controls/LQtProgressBar.qml
        qml/hw_controls/LQtDial.qml
        qml/living_room/LQtSlider.qml
        qml/components/CircularSlider.qml
        qml/hw_controls/LQtIconWithTexts.qml
)

qt_add_resources(appSmartHome "assets"
    PREFIX /
    FILES
    assets/arriving_home.svg
    assets/home.svg
    assets/item.svg
    assets/microphone.svg
    assets/moon.svg
    assets/music.svg
    assets/navigation_toolbar_left.svg
    assets/plus.svg
    assets/relaxing.svg
    assets/search.svg
    assets/right.svg
    assets/user.svg
    assets/temperature.svg
    assets/humidity.svg
    assets/info.svg
    assets/wifi.svg
    assets/backward.svg
    assets/dehumidifier.svg
    assets/forward.svg
    assets/ipod.svg
    assets/play.svg
    assets/tv.svg
    assets/cooling.svg
    assets/dot.svg
    assets/unlock.svg
    assets/power.svg
    assets/shine.svg
    assets/fan.svg
    assets/time.svg
    assets/flash.svg
)
# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSmartHome PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSmartHome
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSmartHome
    PRIVATE Qt6::Quick Qt6::Multimedia
)

include(GNUInstallDirs)
install(TARGETS appSmartHome
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
