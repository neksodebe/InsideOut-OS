#include "print.h"
#include <stdio.h>
#include <unistd.h> // notice this! you need it!

void kernel_main()
{
    print_clear();
    print_set_color(PRINT_COLOR_BLACK, PRINT_COLOR_LIGHT_RED);
    print_str("Hello");
    sleep(5);
    print_str("World!");
}
