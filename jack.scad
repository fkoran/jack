
clearance = 0.2;

r_plate = 450/2;
r_bar = 28/2;
r_sleeve = 50.8/2 + clearance;

thickness = 20;
standoff = 20;
r_foot = 10;

h = r_plate - 2*r_foot;
w = r_plate/2 - 2*r_foot;

offset_r = 10;

offset(r = -offset_r) offset(r = offset_r) {

    difference() {
        
        // main body
        union() {
            square(size=[h,w+2*r_foot], center=true);
            translate([-h/2, -w/2]) {
                circle(r = r_foot);
            };
            translate([+h/2, -w/2]) {
                circle(r = r_foot);
            };
            translate([+h/2, +w/2]) {
                circle(r = r_foot);
            };
            translate([-h/2, +w/2]) {
                circle(r = r_foot);
            }
        }
        
        // center hole
        circle(r = r_sleeve);
        
        // bar cradle
        translate([-h/2, 0]) {
            circle(r = r_bar);
        };
        translate([+h/2, 0]) {
            circle(r = r_bar);
        };
    }
}