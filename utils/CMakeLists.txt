set(LIB_NAME LQtUtils)

add_library(${LIB_NAME} STATIC)

list(APPEND LIB_HDRs
        NonCopyable.h
)
list(APPEND LIB_SRCs
)

target_sources(${LIB_NAME} PRIVATE
        ${LIB_SRCs}
)

target_include_directories(${LIB_NAME} PUBLIC
        .
)

target_link_libraries(${LIB_NAME} PRIVATE
        Qt6::Core
)