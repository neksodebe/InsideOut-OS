@echo off
echo Write 'make build-x86_64' in the docker container, next write 'exit'.
echo.
docker run --rm -it -v "%cd%":/root/env myos-buildenv
qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso