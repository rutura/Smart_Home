set(LIB_NAME Sensors)

add_library(${LIB_NAME} STATIC)

list(APPEND LIB_HDRs
        Sensor.h
        HumiditySensor.h
        TemperatureSensor.h
)
list(APPEND LIB_SRCs
        Sensor.cpp
        HumiditySensor.cpp
        TemperatureSensor.cpp
)

target_sources(${LIB_NAME} PRIVATE
        ${LIB_SRCs}
)

target_include_directories(${LIB_NAME} PUBLIC
        .
)

target_link_libraries(${LIB_NAME} PRIVATE
        Qt6::Core
        Utils
)