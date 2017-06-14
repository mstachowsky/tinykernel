rem compile the kernel into elf format

rem the following are the batch variables.   You can just replace the
rem actual variables (for instance, %kernelCode%) with their values (in
rem this example, just kernel.c.  I wrote these as variables because we
rem will be using multiple source files in the future
set kernelCode=kernel.c
set kernelELF=kernel.elf
set kernelIMG=kernel.img

arm-none-eabi-gcc -O2 -mfpu=vfp -mfloat-abi=hard -march=armv6zk -mtune=arm1176jzf-s -nostartfiles %kernelCode% -o %kernelELF%

rem the above line gives us warning.  s'ok.

rem turn the kernel into kernel.img
arm-none-eabi-objcopy %kernelELF% -O binary %kernelIMG%