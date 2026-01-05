export CMAKE_PREFIX_PATH=\
${ASCEND_HOME_PATH}/compiler/tikcpp/ascendc_kernel_cmake:\
${ASCEND_HOME_PATH}/toolkit/tools/tikicpulib/lib/cmake:\
${CMAKE_PREFIX_PATH}

rm -rf build && mkdir -p build && cd build;

cmake ..; make -j;

./demo