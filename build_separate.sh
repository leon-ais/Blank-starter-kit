#!/bin/bash

# 分别编译脚本 - 用于单独编译src或test目录
# 使用方法：
#   ./build_separate.sh src    - 仅编译src目录
#   ./build_separate.sh test   - 仅编译test目录
#   ./build_separate.sh all    - 编译整个项目
#   ./build_separate.sh clean  - 清理构建文件

BUILD_DIR="$(dirname "$0")/build"

# 函数：显示帮助信息
show_help() {
    echo "分别编译脚本"
    echo "使用方法："
    echo "  $0 src    - 仅编译src目录（生成库）"
    echo "  $0 test   - 仅编译test目录（生成测试可执行文件）"
    echo "  $0 all    - 编译整个项目"
    echo "  $0 clean  - 清理构建文件"
    echo "  $0 help   - 显示此帮助信息"
}

# 函数：检查构建目录
ensure_build_dir() {
    if [ ! -d "$BUILD_DIR" ]; then
        echo "创建build目录..."
        mkdir -p "$BUILD_DIR"
        cd "$BUILD_DIR"
        echo "配置CMake项目..."
        cmake ..
        cd - > /dev/null
    fi
}

# 函数：编译src目录
build_src() {
    ensure_build_dir
    echo "编译src目录..."
    cd "$BUILD_DIR"
    cmake --build . --target solution
    if [ $? -eq 0 ]; then
        echo "src目录编译成功！"
        echo "生成的库文件：$BUILD_DIR/lib/libsolution.a"
    else
        echo "src目录编译失败！"
        exit 1
    fi
    cd - > /dev/null
}

# 函数：编译test目录
build_test() {
    ensure_build_dir
    echo "编译test目录..."
    cd "$BUILD_DIR"
    cmake --build . --target solution_test
    if [ $? -eq 0 ]; then
        echo "test目录编译成功！"
        echo "生成的可执行文件：$BUILD_DIR/bin/solution_test"
    else
        echo "test目录编译失败！"
        exit 1
    fi
    cd - > /dev/null
}

# 函数：编译整个项目
build_all() {
    ensure_build_dir
    echo "编译整个项目..."
    cd "$BUILD_DIR"
    cmake --build .
    if [ $? -eq 0 ]; then
        echo "项目编译成功！"
        echo "生成的库文件：$BUILD_DIR/lib/libsolution.a"
        echo "生成的可执行文件：$BUILD_DIR/bin/solution_test"
    else
        echo "项目编译失败！"
        exit 1
    fi
    cd - > /dev/null
}

# 函数：清理构建文件
clean_build() {
    if [ -d "$BUILD_DIR" ]; then
        echo "清理构建文件..."
        rm -rf "$BUILD_DIR"
        echo "构建文件已清理。"
    else
        echo "build目录不存在，无需清理。"
    fi
}

# 主逻辑
case "${1:-help}" in
    "src")
        build_src
        ;;
    "test")
        build_test
        ;;
    "all")
        build_all
        ;;
    "clean")
        clean_build
        ;;
    "help"|*)
        show_help
        ;;
esac
