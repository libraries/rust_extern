typedef struct Point {
    int x;
    int y;
} Point;

typedef struct Round {
    Point center;
    int radius;
} Round;

int round_circumference(Round *r);
int round_area(Round *r);
Point new_point(int x, int y);
