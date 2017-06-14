# tinykernel
An extremely minimal kernel for the raspberry pi model B used to bootstrap bigger kernels.

How to make this work (tested only on Raspberry Pi Model B.  This does NOT work on the Version 2 pis as far as I know):

1. Install the arm toolchain (arm-none-eabi-gcc and its related  programs).  Put that toolchain on your path, or else you'll have to modify the compilation commands.

2. Format your SD card to be of type FAT.  Raspberry Pi people recommend that you format it using a formatting tool.  Check online for how to do that.

3. Move the files in the directory "PutInSDCard" into the root directory of the SD card.

4. Compile the kernel.  If you're using Windows, you just run the batch file I've put up.  If not, open the file "rawCompilationCommands.txt".  these are the command line arguments to your arm-none-eabi-gcc toolchain.

5. Copy "kernel.img" into the SD card, also in the root directory.

6. Put the SD Card into your raspberry pi, and turn it on.  You will see the green OK/ACT light light up.
