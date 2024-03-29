class Point {
    x: number;
    y: number;
}

class Round {
    center: Point;
    radius: number;
}

function round_circumference(r: Round): number {
    return 2 * r.radius * 3;
}

function round_area(r: Round): number {
    return r.radius * r.radius * 3;
}

function new_point(x: number, y: number): Point {
    syscall(0, x, y, 0, 0, 0, 0);
    const p: Point = {
        x: x,
        y: y,
    };
    return p;
}
