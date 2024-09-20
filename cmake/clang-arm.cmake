macro(use_clang)
    set(CMAKE_C_COMPILER clang)
    set(CMAKE_ASM_COMPILER clang)
    set(CMAKE_CXX_COMPILER clang++)
    set(CMAKE_LINKER clang++)
    set(CMAKE_OBJCOPY llvm-objcopy)
    set(CMAKE_SIZE llvm-size)

    set(CMAKE_EXECUTABLE_SUFFIX_ASM ".elf")
    set(CMAKE_EXECUTABLE_SUFFIX_C ".elf")
    set(CMAKE_EXECUTABLE_SUFFIX_CXX ".elf")

    set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

    set(TARGET_FLAGS "-target arm-none-eabi ")
endmacro()
