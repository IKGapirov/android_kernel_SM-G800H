#!/bin/bash

if [ ! -d $(pwd)/output ];  then
    mkdir $(pwd)/output; 
    mkdir $(pwd)/output/modules;
fi

make -C $(pwd) O=output cyanogenmod_kmini3g_defconfig
make -j7 -C $(pwd) O=output
cp output/arch/arm/boot/zImage output/arch/arm/boot/boot.img-kernel

find $(pwd)/output -name '*.ko' -exec cp -fv {} $(pwd)/output/modules \;

exit