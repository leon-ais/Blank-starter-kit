# Blank-starter-kit

This is a blank C++ project template using CMake as the build system and integrated with Google Test for unit testing.

## Features

-   **CMake Build System**: Configured for easy project setup and compilation.
-   **Google Test Integration**: Ready-to-use unit testing framework.
-   **.gitignore**: Pre-configured to ignore build artifacts and downloaded dependencies (`build/` and `lib/` directories).
-   **`build_and_test.sh` Script**: A convenient script for building, testing, and cleaning the project.

## Prerequisites

Before you begin, ensure you have the following installed:

-   **CMake**: Version 3.10 or higher.
-   **C++ Compiler**: A C++11 compatible compiler (e.g., GCC, Clang, MSVC).
-   **Git**: For version control.

## Getting Started

Follow these steps to get your project up and running:

1.  **Clone the repository**:

    ```bash
    git clone https://github.com/leon-ais/Blank-starter-kit.git
    cd Blank-starter-kit
    ```

2.  **Build and Test**:

    Use the provided `build_and_test.sh` script to build and run tests.

    -   **Normal Build and Test**:

        If the `build` directory does not exist, it will be created. If it exists and is not empty, it will be cleaned before rebuilding.

        ```bash
        ./build_and_test.sh
        ```

    -   **Clean Build Directory Only**:

        This option will only delete the `build` directory if it exists, without performing a build or test.

        ```bash
        ./build_and_test.sh --clean
        ```

## Project Structure

-   `CMakeLists.txt`: Main CMake configuration file.
-   `build_and_test.sh`: Script for building, testing, and cleaning.
-   `include/`: Contains public header files.
-   `src/`: Contains source code files.
-   `test/`: Contains unit tests using Google Test.
-   `lib/`: Contains downloaded Google Test source and build files (ignored by Git).