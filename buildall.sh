cd gnu-efi
make bootloader
cd ../kernel
make kernel
make buildimg
cd ..