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

#[no_mangle]
pub extern "C" fn syscall(n: i64, a0: i64, a1: i64, a2: i64, a3: i64, a4: i64, a5: i64) -> i64 {
    println!(
        "syscall({}, {}, {}, {}, {}, {}, {})",
        n, a0, a1, a2, a3, a4, a5
    );
    0
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
