[中文版 README](README_zh.md)

# Blank-starter-kit

A modern C++ project template for algorithm solutions and coding practice, featuring separate compilation of source and test directories.

## Features

-   **Modular Architecture**: Separate `src/` and `test/` directories for clean organization
-   **CMake Build System**: Advanced configuration with subdirectory support
-   **Google Test Integration**: Comprehensive unit testing framework
-   **Separate Compilation**: Build source and test components independently
-   **Flexible Scripts**: Multiple build scripts for different development workflows
-   **Template Ready**: Easy to extend with new algorithm solutions

## Prerequisites

Before you begin, ensure you have the following installed:

-   **CMake**: Version 3.10 or higher.
-   **C++ Compiler**: A C++17 compatible compiler (e.g., GCC, Clang, MSVC).
-   **Git**: For version control.

## Getting Started

Follow these steps to get your project up and running:

1.  **Clone the repository**:

    ```bash
    git clone https://github.com/leon-ais/Blank-starter-kit.git
    cd Blank-starter-kit
    ```

2.  **Build and Test**:

    Choose from multiple build approaches:

    -   **Full Build (Traditional)**:

        ```bash
        ./build.sh
        ```

    -   **Separate Compilation (Recommended)**:

        ```bash
        # Build only source code
        ./build_separate.sh src

        # Build only tests
        ./build_separate.sh test

        # Build everything
        ./build_separate.sh all

        # Clean build files
        ./build_separate.sh clean
        ```

## Project Structure

```
SolutionTemplate/
├── CMakeLists.txt          # Main CMake configuration
├── build.sh                # Traditional full build script
├── build_separate.sh       # Separate compilation script (recommended)
├── BUILD_GUIDE.md          # Detailed build instructions
├── include/
│   └── solution.h          # Main solution class header
├── src/
│   ├── CMakeLists.txt      # Source directory configuration
│   └── solution.cpp        # Implementation file
├── test/
│   ├── CMakeLists.txt      # Test directory configuration
│   └── solution_test.cpp   # Unit tests
├── build/                  # Build output directory
│   ├── bin/
│   │   └── solution_test   # Test executable
│   └── lib/
│       └── libsolution.a   # Solution library
└── lib/                    # Google Test dependencies
```
