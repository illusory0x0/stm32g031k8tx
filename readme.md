use `init.ps1` to init a empty project

install gcc-arm-none-eabi from [gcc](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)

install clang-arm from [clang](https://github.com/ARM-software/LLVM-embedded-toolchain-for-Arm/releases)

if you download compiler very slow, you may need **Scientific Internet Access**

## FAQ

use clang-arm may occurs link error, change the linker script,

move 
```
MEMORY
{
  RAM    (xrw)    : ORIGIN = 0x20000000,   LENGTH = 8K
  FLASH    (rx)    : ORIGIN = 0x8000000,   LENGTH = 64K
}
```

before using `RAM` and `FLASH`, before code underneath this
```
_estack = ORIGIN(RAM) + LENGTH(RAM);	/* end of "RAM" Ram type memory */
```