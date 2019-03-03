
module tophalftest() {
    difference() {
        import("CaseTop.stl");
        #translate([8,-60,3])
        cube([70,200,30]);
    }
}
module coretest() {
    difference() {
        import("CaseTop.stl");
        #translate([8,-60,3])
        cube([70,200,30]);
        #translate([-35,-90,3])
        cube([50,130,30]);
    }
}

module threadtest() {
    difference() {
        import("CaseTop.stl");
        #translate([-8,-60,3])
        cube([100,200,30]);
        #translate([-35,-90,3])
        cube([50,150,30]);
        #translate([-50,100,3])
        cube([50,150,30]);
    }
}

tophalftest();