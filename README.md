# InsideOut-OS
This is the repository for storing the source code of my personal hobby project InsideOut-OS (or one could call it the real Rimont OS).

For whatever reason, the source code isn't stored correctly and git wasn't really used in the development of this OS.
Therefore, instead of doing the morally correct thing (being removing these stupid submodules and uploading the code correctly),
I will slap in a tar.xz archive in the root.

*Feel free to fork this!! Please do!!!!*

## Issues
- Kernel won't get past the ACPI initialization.
- The call stack does get a bit quirky at night.
- Kernel refuses to work with more than 3.5GB of RAM. I tried fixing this one, but I'm not sure it worked!

If you somehow manage to fix these, may whoever is up there bless your soul.

## Features
- simple shell
- simple window manager / renderer
- class with a BUNCH of tools and functions to render stuff, filling the screen, drawing bitmaps, drawing the mouse cursor
- uses a high resolution video mode
- panic screen if anything goes super wrong
- simple callstack that i TRIED to implement but it can break sometimes
- ACPI, PCI, AHCI, bunch of that device stuff although that was part of the tutorial
- timing functions like delay() that use the PIT chip on your computer
- mouse and keyboard handling
- memory management (paging, global descriptor table, memory mapping)
- function to generate random numbers (shocking)
- runs with qemu

i would be so amazed if anyone can fix the garbage code used to initialize the kernel, for some reason it always crashes due to some stupid page faults in the ACPI stuff!!! these issues occur in `kernelUtil.cpp` and if you look in the source code, you'll see my commented out debugging attempts which portray my pain trying to fix this dumb thing.


*consider fixing these things a challenge to your programming abilities*
