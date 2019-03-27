
difference() {
rotate([180,0,0])
import("../CaseTop.stl");

hull() {
    bxht=24.3;

    a=[-20,8];
    translate([a[0],a[1],-bxht])
    cylinder(d=5,h=bxht,$fn=20);

    b=[20,8];
    translate([b[0],b[1],-bxht])
    cylinder(d=5,h=bxht,$fn=20);

    c=[-20,-37];
    translate([c[0],c[1],-bxht])
    cylinder(d=5,h=bxht,$fn=20);

    d=[20,-37];
    translate([d[0],d[1],-bxht])
    cylinder(d=5,h=bxht,$fn=20);
}

}