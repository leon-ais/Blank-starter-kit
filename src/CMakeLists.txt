# 收集源文件
file(GLOB SOURCES *.cpp)

# 创建库
add_library(solution ${SOURCES})
target_include_directories(solution 
    PUBLIC 
        ${CMAKE_CURRENT_SOURCE_DIR}/../include
)