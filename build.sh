#!/bin/bash

if [ ! -d $(pwd)/output ];  then
    mkdir $(pwd)/output; 
    mkdir $(pwd)/output/modules;
fi

make -C $(pwd) O=output msm8226-sec_defconfig VARIANT_DEFCONFIG=msm8228-sec_atlantic3geur_defconfig
make -j3 -C $(pwd) O=output

find $(pwd)/output -name '*.ko' -exec cp -fv {} $(pwd)/output/modules \;

exit