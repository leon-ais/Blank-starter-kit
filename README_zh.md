# Blank-starter-kit

这是一个使用 CMake 作为构建系统，并集成了 Google Test 进行单元测试的空白 C++ 项目模板。

## 特性

-   **CMake 构建系统**：配置简单，易于项目设置和编译。
-   **Google Test 集成**：开箱即用的单元测试框架。
-   **.gitignore**：预配置忽略构建产物和下载的依赖项（`build/` 和 `lib/` 目录）。
-   **`scripts/build.sh` 脚本**：一个方便的脚本，用于构建、测试和清理项目。

## 准备工作

在开始之前，请确保您已安装以下软件：

-   **CMake**：版本 3.10 或更高。
-   **C++ 编译器**：兼容 C++11 的编译器（例如 GCC、Clang、MSVC）。
-   **Git**：用于版本控制。

## 快速开始

按照以下步骤启动您的项目：

1.  **克隆仓库**：

    ```bash
    git clone https://github.com/leon-ais/Blank-starter-kit.git
    cd Blank-starter-kit
    ```

2.  **构建和测试**：

    使用提供的 `scripts/build.sh` 脚本进行构建和运行测试。

    -   **正常构建和测试**：

        如果 `build` 目录不存在，它将被创建。如果它存在且不为空，它将在重新构建之前被清理。

        ```bash
        ./scripts/build.sh
        ```

    -   **仅清理构建目录**：

        此选项将仅删除 `build` 目录（如果存在），而不执行构建或测试。

        ```bash
        ./scripts/build.sh --clean
        ```

## 项目结构

-   `CMakeLists.txt`：主 CMake 配置文件。
-   `build_and_test.sh`：用于构建、测试和清理的脚本。
-   `include/`：包含公共头文件。
-   `src/`：包含源代码文件。
-   `test/`：包含使用 Google Test 的单元测试。
-   `lib/`：包含下载的 Google Test 源代码和构建文件（已被 Git 忽略）。