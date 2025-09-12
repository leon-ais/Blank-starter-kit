# 收集测试源文件
file(GLOB TEST_SOURCES *.cpp)

# 创建测试可执行文件
add_executable(solution_test ${TEST_SOURCES})

# 链接Google Test和解决方案库
target_link_libraries(solution_test
    PRIVATE
        solution
        gtest
        gtest_main
)

# 添加测试
include(GoogleTest)
gtest_discover_tests(solution_test)