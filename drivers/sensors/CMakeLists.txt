set(LIB_NAME LQtSensors)

add_library(${LIB_NAME} STATIC)

list(APPEND LIB_HDRs
        LQtSensor.h
        LQtHumiditySensor.h
        LQtTemperatureSensor.h
)
list(APPEND LIB_SRCs
        LQtSensor.cpp
        LQtHumiditySensor.cpp
        LQtTemperatureSensor.cpp
)

target_sources(${LIB_NAME} PRIVATE
        ${LIB_SRCs}
)

target_include_directories(${LIB_NAME} PUBLIC
        .
)

target_link_libraries(${LIB_NAME} PRIVATE
        Qt6::Core
        LQtUtils
)