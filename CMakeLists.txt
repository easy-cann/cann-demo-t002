cmake_minimum_required(VERSION 3.16)
# find_package(ASC)是CMake中用于查找和配置Ascend C编译工具链的命令
find_package(ASC REQUIRED)

# 打印ASC包查找详情
if(ASC_FOUND)
    message(STATUS "Found ASC: ${ASC_DIR}")
else()
    message(STATUS "Not Found ASC")
endif()

# 指定项目支持的语言包括ASC和CXX，ASC表示支持使用毕昇编译器对Ascend C编程语言进行编译
project(kernel_samples LANGUAGES ASC CXX)
add_executable(demo
    about_aic_aiv.asc
)
# 通过编译选项设置NPU架构
target_compile_options(demo PRIVATE   
   $<$<COMPILE_LANGUAGE:ASC>:--npu-arch=dav-2201>
)