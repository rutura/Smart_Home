set(LIB_NAME LQtActuators)

add_library(${LIB_NAME} STATIC)

list(APPEND LIB_HDRs
        LQtActuator.h
        LQtAirPurifierActuator.h
        LQtThermostatActuator.h
        LQtTVActuator.h
        LQtWiFiActuator.h
        LQtHomePodActuator.h
)
list(APPEND LIB_SRCs
        LQtActuator.cpp
        LQtAirPurifierActuator.cpp
        LQtThermostatActuator.cpp
        LQtTVActuator.cpp
        LQtWiFiActuator.cpp
        LQtHomePodActuator.cpp
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