
module switchtop() {
    intersection() {
        import("CaseTop.stl");
        translate([50,70,-10])
        cube([20,20,50]);
    }
}

module switchbottom() {
    intersection() {
        import("CaseBase.stl");
        translate([50,70,-10])
        cube([20,20,50]);
    }
}

module switchandboost() {
    intersection() {
        import("CaseBase.stl");
        translate([-8,44,-10])
        cube([80,45,50]);
    }
}

module lightpipestop() {
    intersection() {
        import("CaseTop.stl");
        #translate([-8,39,-10])
        cube([80,50,50]);
    }
}


lightpipestop();
//switchtop();
//switchbottom();
//switchandboost();