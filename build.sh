#!/bin/bash

if [ ! -d $(pwd)/output ]; 
    then
	mkdir $(pwd)/output; 
    fi

make -C $(pwd) O=output msm8228-sec_atlantic3geur_defconfig
make -j5 -C $(pwd) O=output


if [ ! -d $(pwd)/output/modules ]; 
    then
	mkdir $(pwd)/output/modules; 
    fi
find $(pwd)/output -name '*.ko' -exec cp -v {} $(pwd)/output/modules \;

exit