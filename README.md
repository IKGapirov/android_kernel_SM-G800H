# android_kernel
################################################################################

1. How to Build
    - get Toolchain
	From android git server , codesourcery and etc ..
    

    - make
	    $ make ARCH=arm msm8226-sec_defconfig VARIANT_DEFCONFIG=msm8228-sec_atlantic3geur_defconfig
	    $ make ARCH=arm

make msm8228-sec_atlantic3geur_defconfig


2. Output files
    - Kernel : arch/arm/boot/zImage
    - module : drivers/*/*.ko

3. How to Clean	
	$ make clean
################################################################################
