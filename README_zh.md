# Blank-starter-kit

这是一个现代化的 C++ 项目模板，专为算法题解和编程练习而设计，具有分别编译源代码和测试目录的功能。

## 特性

-   **模块化架构**：独立的 `src/` 和 `test/` 目录，组织清晰
-   **CMake 构建系统**：高级配置，支持子目录构建
-   **Google Test 集成**：完善的单元测试框架
-   **分别编译**：可独立构建源代码和测试组件
-   **灵活脚本**：多种构建脚本，适应不同开发工作流程
-   **模板就绪**：易于扩展，添加新的算法题解

## 准备工作

在开始之前，请确保您已安装以下软件：

-   **CMake**：版本 3.10 或更高。
-   **C++ 编译器**：兼容 C++17 的编译器（例如 GCC、Clang、MSVC）。
-   **Git**：用于版本控制。

## 快速开始

按照以下步骤启动您的项目：

1.  **克隆仓库**：

    ```bash
    git clone https://github.com/leon-ais/Blank-starter-kit.git
    cd Blank-starter-kit
    ```

2.  **构建和测试**：

    选择多种构建方式：

    -   **完整构建（传统方式）**：

        ```bash
        ./build.sh
        ```

    -   **分别编译（推荐）**：

        ```bash
        # 仅构建源代码
        ./build_separate.sh src

        # 仅构建测试
        ./build_separate.sh test

        # 构建整个项目
        ./build_separate.sh all

        # 清理构建文件
        ./build_separate.sh clean
        ```

## 项目结构

```
SolutionTemplate/
├── CMakeLists.txt          # 主 CMake 配置文件
├── build.sh                # 传统完整构建脚本
├── build_separate.sh       # 分别编译脚本（推荐）
├── BUILD_GUIDE.md          # 详细构建指南
├── include/
│   └── solution.h          # 主解决方案类头文件
├── src/
│   ├── CMakeLists.txt      # 源代码目录配置
│   └── solution.cpp        # 实现文件
├── test/
│   ├── CMakeLists.txt      # 测试目录配置
│   └── solution_test.cpp   # 单元测试
├── build/                  # 构建输出目录
│   ├── bin/
│   │   └── solution_test   # 测试可执行文件
│   └── lib/
│       └── libsolution.a   # 解决方案库
└── lib/                    # Google Test 依赖
```
