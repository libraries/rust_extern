#include <stdio.h>
#include "draw.h"

int main() {
    Point center = {0, 0};
    Round round = {center, 2};

    int circumference = round_circumference(&round);
    int area = round_area(&round);

    printf("circumference=%i area=%i\n", circumference, area);
    return 0;
}

