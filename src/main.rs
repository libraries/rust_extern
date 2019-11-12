#[repr(C)]
pub struct Point {
    pub x: cty::c_int,
    pub y: cty::c_int,
}

#[repr(C)]
pub struct Round {
    pub center: Point,
    pub radius: cty::c_int,
}

#[link(name = "draw")]
extern "C" {
    fn round_circumference(r: &Round) -> cty::c_int;
    fn round_area(r: &Round) -> cty::c_int;
    fn new_point(x: cty::c_int, y: cty::c_int) -> Point;
}

fn main() {
    unsafe {
        let point = new_point(0, 0);
        let round = Round {
            center: point,
            radius: 2,
        };

        let circumference = round_circumference(&round);
        let area = round_area(&round);

        println!("circumference={} area={}", circumference, area);
    }
}
