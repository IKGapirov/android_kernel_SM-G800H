#!/bin/bash

if [ ! -d $(pwd)/output ];  then
    mkdir $(pwd)/output; 
    mkdir $(pwd)/output/modules;
fi

make -C $(pwd) O=output cyanogenmod_kmini3g_defconfig
make -j7 -C $(pwd) O=output

$(pwd)/dtbToolCM  -o $(pwd)/output/arch/arm/boot/dt.img -s 2048 -p $(pwd)/output/scripts/dtc/ $(pwd)/output/arch/arm/boot/ -v

cp output/arch/arm/boot/zImage output/arch/arm/boot/boot.img-kernel
cp output/arch/arm/boot/dt.img output/arch/arm/boot/boot.img-dt
find $(pwd)/output -name '*.ko' -exec cp -fv {} $(pwd)/output/modules \;

exit