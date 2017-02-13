$fn = 100;

straw_diameter = 5;
straw_connector_height = 5;
straw_connector_thicc = 1;
valve_diameter = 7;
valve_thickness = 2;
valve_height = 10;

difference() {
  cylinder(d=valve_diameter + valve_thickness, h=valve_height, center=true);
  cylinder(d=valve_diameter, h=valve_height + 5, center=true);
}

translate([0, 0, -valve_height / 2 - straw_connector_height / 2]) {
  difference() {
    cylinder(d=straw_diameter + straw_connector_thicc, h=straw_connector_height, center=true);
    cylinder(d=straw_diameter, h=straw_connector_height + 1, center=true);
  }
}
