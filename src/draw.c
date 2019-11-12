#include "draw.h"

int round_circumference(Round *r) {
    return r->radius * 2 * 3;
}

int round_area(Round *r) {
    return r->radius * r->radius * 3;
}
