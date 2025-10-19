# 构建指南

本项目支持对src和test目录进行分别编译，提高开发效率，是一个通用的算法题解模板。

## 项目结构

```
SolutionTemplate/
├── CMakeLists.txt          # 主CMake配置文件
├── src/
│   ├── CMakeLists.txt      # src目录CMake配置
│   └── solution.cpp        # 源代码文件
├── test/
│   ├── CMakeLists.txt      # test目录CMake配置
│   └── solution_test.cpp   # 测试文件
├── include/
│   └── solution.h          # 头文件
├── build.sh                # 完整构建脚本
├── build_separate.sh       # 分别编译脚本（推荐）
├── BUILD_GUIDE.md          # 本构建指南
└── build/                  # 构建输出目录
    ├── bin/
    │   └── solution_test   # 测试可执行文件
    └── lib/
        ├── libsolution.a   # 解决方案库
        ├── libgtest.a      # Google Test库
        └── libgtest_main.a # Google Test主库
```

## 编译方式

### 1. 使用分别编译脚本（推荐）

```bash
# 仅编译src目录（生成库文件）
./build_separate.sh src

# 仅编译test目录（生成测试可执行文件）
./build_separate.sh test

# 编译整个项目
./build_separate.sh all

# 清理构建文件
./build_separate.sh clean

# 显示帮助信息
./build_separate.sh help
```

### 2. 使用CMake命令直接编译

```bash
# 配置项目
mkdir -p build && cd build && cmake ..

# 仅编译src目录
cmake --build . --target solution

# 仅编译test目录
cmake --build . --target solution_test

# 编译整个项目
cmake --build .
```

## 使用说明

1. **分别编译的优势**：
   - 开发阶段：只需编译修改的目录，提高编译速度
   - 调试阶段：快速验证代码更改
   - CI/CD：可以并行构建不同部分

2. **依赖关系**：
   - test目录依赖于src目录生成的库
   - 如果修改了src目录的代码，需要重新编译src，然后再编译test

3. **输出文件**：
   - 库文件：`build/lib/libsolution.a`
   - 测试可执行文件：`build/bin/solution_test`

## 示例工作流程

```bash
# 1. 修改源代码
vim src/solution.cpp

# 2. 编译src目录
./build_separate.sh src

# 3. 修改测试代码
vim test/solution_test.cpp

# 4. 编译test目录
./build_separate.sh test

# 5. 运行测试
./build/bin/solution_test
```

## 添加新算法题解

要在项目中添加新的算法题解：

1. **在头文件中添加函数声明**：
   ```cpp
   // 在 include/solution.h 中添加
   int newAlgorithm(const std::vector<int>& input);
   ```

2. **在源文件中实现函数**：
   ```cpp
   // 在 src/solution.cpp 中添加
   int Solution::newAlgorithm(const std::vector<int>& input) {
       // 实现你的算法
       return result;
   }
   ```

3. **添加相应的测试**：
   ```cpp
   // 在 test/solution_test.cpp 中添加
   TEST(SolutionTest, NewAlgorithm) {
       Solution solution;
       // 添加测试用例
   }
   ```

## 注意事项

- 确保已安装CMake和C++编译器
- 初次使用时会自动下载和配置Google Test
- 构建产物在`build/`目录中，清理时会删除整个目录
