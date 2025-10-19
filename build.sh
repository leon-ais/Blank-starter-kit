#!/bin/bash

# 解析命令行参数
CLEAN_BUILD=false
for arg in "$@"; do
  case $arg in
    --clean)
      CLEAN_BUILD=true
      shift
      ;;
  esac
done

# 检查build目录是否存在，如果不存在则创建
BUILD_DIR="$(dirname "$0")/build"

# 如果指定了--clean参数，则删除build目录并重新创建
if [ "$CLEAN_BUILD" = true ]; then
  if [ -d "$BUILD_DIR" ]; then
    echo "删除build目录..."
    rm -rf "$BUILD_DIR"
    echo "build目录已清理。"
  else
    echo "build目录不存在，无需清理。"
  fi
  exit 0
fi

# 如果build目录不存在，则创建
if [ ! -d "$BUILD_DIR" ]; then
  echo "创建build目录..."
  mkdir -p "$BUILD_DIR"
fi

# 进入build目录
cd "$BUILD_DIR"

# 如果build目录不为空，则清理之前的构建内容
if [ "$(ls -A .)" ]; then
  echo "清理之前的构建内容..."
  # 只有当CMakeCache.txt存在时才执行clean，避免在新创建的目录中报错
  if [ -f "CMakeCache.txt" ]; then
    cmake --build . --target clean
  else
    echo "CMakeCache.txt不存在，跳过cmake clean。"
  fi
fi

# 配置CMake项目
echo "配置CMake项目..."
cmake ..

# 构建项目
echo "构建项目..."
cmake --build .

# 运行测试
echo "运行测试..."
ctest -V