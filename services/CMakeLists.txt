set(MODULE_NAME LQtServices)
set(LIB_NAME ${MODULE_NAME}Lib)

qt_add_library(${LIB_NAME} STATIC)

target_include_directories(${LIB_NAME} PUBLIC
    .
)
set_target_properties(${LIB_NAME} PROPERTIES AUTOMOC ON)
target_link_libraries(${LIB_NAME} PRIVATE
    Qt6::Quick
    Qt6::Core
    # drivers & actuators
    Sensors
    Actuators
    Utils
)

list(APPEND MODULE_SRC_FILES
        LQtDriverService.h
        LQtDriverService.cpp
        LQtThermostatState.h
        LQtThermostatState.cpp
        LQtHomePodState.h
        LQtHomePodState.cpp
)

list(APPEND MODULE_QML_FILES)

#[[set_source_files_properties(UserDatabase.qml PROPERTIES
        QT_QML_SINGLETON_TYPE  TRUE
)]]

qt_add_qml_module(${LIB_NAME}
        URI ${MODULE_NAME}
        VERSION 1.0
        RESOURCE_PREFIX /
        QML_FILES
        ${MODULE_QML_FILES}
        SOURCES
        ${MODULE_SRC_FILES}
        OUTPUT_DIRECTORY
        "${CMAKE_BINARY_DIR}/${MODULE_NAME}"
)

