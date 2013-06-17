/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */

/* Road width variables that are used in road & bridge styles */
@rdz11_maj: 1.6; @rdz11_med: 0.8; @rdz11_min: 0.4; @rdz11_ped: 0;
@rdz12_maj: 2.5; @rdz12_med: 1.2; @rdz12_min: 0.6; @rdz12_ped: 0;
@rdz13_maj: 3;   @rdz13_med: 1.5; @rdz13_min: 1;   @rdz13_ped: 0.2;
@rdz14_maj: 4;   @rdz14_med: 2.5; @rdz14_min: 1.5; @rdz14_ped: 0.4;
@rdz15_maj: 6;   @rdz15_med: 4;   @rdz15_min: 1.5;   @rdz15_ped: 0.5;
@rdz16_maj: 8;   @rdz16_med: 6;   @rdz16_min: 2;   @rdz16_ped: 0.8;
@rdz17_maj: 12;  @rdz17_med: 10;  @rdz17_min: 5;  @rdz17_ped: 1;
@rdz18_maj: 18;  @rdz18_med: 16;  @rdz18_min: 8;  @rdz18_ped: 1.4;

/* ---- Casing ----------------------------------------------- */
// collapse     type into stylegroup
// motorway:   motorway, trunk
// mainroad:   primary, secondary
// minorroad:  tertiary, residential, unclassified, living_street
// service:    service, track
// noauto:     footway, cycleway, path, pedestrian
// railway:

#roads_high::outline[zoom>=11][zoom<=20],
#tunnel[render='1_outline'][zoom>=11][zoom<=20],
#bridge[render='1_outline'][zoom>=11][zoom<=20]{

  /* -- colors & styles -- */
  
  // DEFAULT
  line-cap: round;
  [bridge=1],[tunnel=1],[stylegroup='railway'] {
    line-cap: butt;
  }
  line-join: round;
  line-color: @standard_case;
  [bridge=1] { line-color: @standard_case * 0.8; }
  
  // STYLEGROUP
  [stylegroup='motorway']{
    line-color: @motorway_case;
    [bridge=1] { line-color: @motorway_case * 0.8; }
  }
  [stylegroup='mainroad']{
    line-color: @mainroad_case;
    [bridge=1] { line-color: @mainroad_case * 0.8; }
  }
  [stylegroup='minorroad']{
    line-color: @minorroad_case;
    [bridge=1] { line-color: @minorroad_case * 0.8; }
  }
  [stylegroup='service']{
    line-color: @service_case;
    [bridge=1] { line-color: @service_case * 0.8; }
  }
  [stylegroup='noauto']{
    line-color: @pedestrian_case;
    [bridge=1] { line-color: @pedestrian_case * 0.8; }
  }
  [stylegroup='railway'] {
    line-color: @rail_case;
    [bridge=1] { line-color: @rail_case * 0.8; }
  }
  [tunnel=1] { line-dasharray: 3,3; }        
  /* -- widths -- */
  [zoom=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj + 2; }
    [stylegroup='mainroad'] { line-width: @rdz11_med + 1.6; }
    [stylegroup='minorroad']{ line-width: 0; } //{ line-width: @rdz11_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj + 2; }
    [stylegroup='mainroad'] { line-width: @rdz12_med + 2; }
    [stylegroup='minorroad']{ line-width: 0; } //{ line-width: @rdz12_min; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj + 2; }
    [stylegroup='mainroad'] { line-width: @rdz13_med + 2; }
    [stylegroup='minorroad']{ line-width: 0; } //{ line-width: @rdz13_min } // + 2; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 0; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj + 2; }
    [stylegroup='mainroad'] { line-width: @rdz14_med + 2; }
    [stylegroup='minorroad']{ line-width: 0; } //{ line-width: @rdz14_min + 2; }
    /* No minor bridges yet */
    [stylegroup='service']  { line-width: 0; } //{ line-width: @rdz14_min / 3 + 2; }
    [stylegroup='noauto']   { line-width: 0; }
    [stylegroup='railway']  { line-width: 3; line-dasharray:1,10; }
  }
  [zoom=15] {
    [stylegroup='motorway'] { line-width: @rdz15_maj + 2.5; }
    [stylegroup='mainroad'] { line-width: @rdz15_med + 2; }
    [stylegroup='minorroad']{ line-width: @rdz15_min + 1.5; }
    [stylegroup='service']  { line-width: @rdz15_min / 3 + 1.5; }
    [stylegroup='noauto']   { line-width: 0; } //{ line-width: @rdz15_min / 4 + 2; }
    [stylegroup='railway']  { line-width: 4; line-dasharray:1,12; }
  }
  [zoom=16] {
    [stylegroup='motorway'] { line-width: @rdz16_maj + 2.5; }
    [stylegroup='mainroad'] { line-width: @rdz16_med + 2.5; }
    [stylegroup='minorroad']{ line-width: @rdz16_min + 2; }
    [stylegroup='service']  { line-width: @rdz16_min / 3 + 2; }
    [stylegroup='noauto']   { line-width: 0; } //{ line-width: @rdz16_min / 4 + 2; }
    [stylegroup='railway']  { line-width: 6; line-dasharray:1,14; }
  }
  [zoom>=17] {
    [stylegroup='motorway'] { line-width: @rdz17_maj + 3; }
    [stylegroup='mainroad'] { line-width: @rdz17_med + 2.5; }
    [stylegroup='minorroad']{ line-width: @rdz17_min + 2; }
    [stylegroup='service']  { line-width: @rdz17_min / 3 + 2; }
    [stylegroup='noauto']   { line-width: 0; } //{ line-width: @rdz17_min / 4 + 4; }
    [stylegroup='railway']  { line-width: 8; line-dasharray:1.5,16; } // 3 + 4
  }
  [zoom>=18] {
    [stylegroup='motorway'] { line-width: @rdz18_maj + 4; }
    [stylegroup='mainroad'] { line-width: @rdz18_med + 4; }
    [stylegroup='minorroad']{ line-width: @rdz18_min + 3.5; }
    [stylegroup='service']  { line-width: @rdz18_min / 3 + 3.5; }
    [stylegroup='noauto']   { line-width: 0; } //{ line-width: @rdz18_min / 4 + 6; }
    [stylegroup='railway']  { line-width: 9; line-dasharray:2,18; }
  }
}


#roads_high[zoom>=11][zoom<=20],
#tunnel[render='3_inline'][zoom>=11][zoom<=20],
#bridge[render='3_inline'][zoom>=11][zoom<=20]{
  /* -- colors & styles -- */

  // DEFAULT
  line-color: @standard_fill;

  // STYLEGROUP
  [stylegroup='motorway']{
    line-color: @motorway_fill;
    [bridge=1] { line-color: lighten(@motorway_fill, 10%); }
  }
  [stylegroup='mainroad']{
    line-color: @mainroad_fill;
    [bridge=1] { line-color: lighten(@mainroad_fill, 10%); }
  }
  [stylegroup='minorroad']{
    line-color: @minorroad_fill;
    [bridge=1] { line-color: lighten(@minorroad_fill, 10%); }
  }
  [stylegroup='service']{
    line-color: @service_fill;
    [bridge=1] { line-color: lighten(@service_fill, 10%); }
  }
  [stylegroup='noauto']{
    line-color: @pedestrian_fill;
    [bridge=1] { line-color: lighten(@pedestrian_fill, 10%); }
  }
  [stylegroup='railway'] {
    line-color: @rail_line;
    [type='subway'] { line-opacity: 0.67; }
  }
  [stylegroup='service'],
  [stylegroup='minorroad'],
  [stylegroup='mainroad'],
  [stylegroup='motorway'] {
    line-cap: round;
    line-join: round;
  }
  [stylegroup='noauto'] {
    line-join: round;
  }
  [tunnel=1] {
    line-cap: butt;
  }
  /* -- widths -- */
  [zoom<=11] {
    [stylegroup='motorway'] { line-width: @rdz11_maj; }
    [stylegroup='mainroad'] { line-width: @rdz11_med; }
    [stylegroup='minorroad']{ line-width: @rdz11_min;}
    [stylegroup='service']  { line-width: @rdz11_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz11_ped; }
    [stylegroup='railway']  { line-width: 0.2; }
  }
  [zoom=12] {
    [stylegroup='motorway'] { line-width: @rdz12_maj; }
    [stylegroup='mainroad'] { line-width: @rdz12_med; }
    [stylegroup='minorroad']{ line-width: @rdz12_min;}
    [stylegroup='service']  { line-width: @rdz12_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz12_ped; }
    [stylegroup='railway']  { line-width: 0.4; }
  }
  [zoom=13] {
    [stylegroup='motorway'] { line-width: @rdz13_maj; }
    [stylegroup='mainroad'] { line-width: @rdz13_med; }
    [stylegroup='minorroad']{ line-width: @rdz13_min; }
    [stylegroup='service']  { line-width: @rdz13_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz13_ped; line-dasharray: 1,1; }
    [stylegroup='railway']  { line-width: 0.8; }
  }
  [zoom=14] {
    [stylegroup='motorway'] { line-width: @rdz14_maj; }
    [stylegroup='mainroad'] { line-width: @rdz14_med; }
    [stylegroup='minorroad']{ line-width: @rdz14_min; }
    [stylegroup='service']  { line-width: @rdz14_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz14_ped; line-dasharray: 1,1; }
    [stylegroup='railway']  { line-width: 1; }
  }
  [zoom=15] {
    [stylegroup='motorway'] { line-width: @rdz15_maj; }
    [stylegroup='mainroad'] { line-width: @rdz15_med; }
    [stylegroup='minorroad']{ line-width: @rdz15_min; }
    [stylegroup='service']  { line-width: @rdz15_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz15_ped; line-dasharray: 2,1; }
    [stylegroup='railway']  { line-width: 1.5; }
  }
  [zoom=16] {
    [stylegroup='motorway'] { line-width: @rdz16_maj; }
    [stylegroup='mainroad'] { line-width: @rdz16_med; }
    [stylegroup='minorroad']{ line-width: @rdz16_min; }
    [stylegroup='service']  { line-width: @rdz16_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz16_ped; line-dasharray: 3,2; }
    [stylegroup='railway']  { line-width: 2; }
  }
  [zoom=17] {
    [stylegroup='motorway'] { line-width: @rdz17_maj; }
    [stylegroup='mainroad'] { line-width: @rdz17_med; }
    [stylegroup='minorroad']{ line-width: @rdz17_min; }
    [stylegroup='service']  { line-width: @rdz17_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz17_ped; line-dasharray: 4,3; }
    [stylegroup='railway']  { line-width: 2.5; }
  }
  [zoom>=18] {
    [stylegroup='motorway'] { line-width: @rdz18_maj; }
    [stylegroup='mainroad'] { line-width: @rdz18_med; }
    [stylegroup='minorroad']{ line-width: @rdz18_min; }
    [stylegroup='service']  { line-width: @rdz18_min / 2; }
    [stylegroup='noauto']   { line-width: @rdz18_ped; line-dasharray: 5,4; }
    [stylegroup='railway']  { line-width: 2.5; }
  }
}


/* ---- Bridge fill for dashed lines -------------------------------- */
#tunnel[render='2_line'][zoom>=14][zoom<=20],
#bridge[render='2_line'][zoom>=14][zoom<=20]{
  /* -- colors & styles -- */
  [stylegroup='noauto'] {
    line-color: @pedestrian_fill; //@land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='railway'] {
    line-color: @land;
    line-join: round;
  }
  /* -- widths -- */
  [zoom=14] {
    [stylegroup='noauto']   { line-width: @rdz14_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 1 + 1; }
  }
  [zoom=15] {
    [stylegroup='noauto']   { line-width: @rdz15_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 1.5 + 1; }
  }
  [zoom=16] {
    [stylegroup='noauto']   { line-width: @rdz16_min / 4 + 1; }
    [stylegroup='railway']  { line-width: 2 + 1; }
  }
  [zoom=17] {
    [stylegroup='noauto']   { line-width: @rdz17_min / 4 + 3; }
    [stylegroup='railway']  { line-width: 3 + 2; }
  }
  [zoom>=18] {
    [stylegroup='noauto']   { line-width: @rdz18_min / 4 + 3; }
    [stylegroup='railway']  { line-width: 4 + 3; }
  }
  // fill pedestrian bridges w/ @land
  ::fill[stylegroup='noauto']{
    line-color: @land;
    [zoom=15]{ line-width: @rdz15_min / 4; }
    [zoom=16]{ line-width: @rdz16_min / 4; }
    [zoom=17]{ line-width: @rdz17_min / 4; }
    [zoom=18]{ line-width: @rdz18_min / 4; }
  }
}

/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-color:@standard_case;
  marker-line-width:2;
  marker-allow-overlap:true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-width:0;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}
#turning_circle_case,
#turning_circle_fill {
  [zoom=14] { marker-width:@rdz14_min * 1.1; }
  [zoom=15] { marker-width:@rdz15_min * 1.1; }
  [zoom=16] { marker-width:@rdz16_min * 1.1; }
  [zoom=17] { marker-width:@rdz17_min * 1.1; }
  [zoom>=18] { marker-width:@rdz18_min * 1.1; }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway[zoom>9] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1; }
    [zoom=11]{ line-width:2; }
    [zoom=12]{ line-width:3; }
    [zoom=13]{ line-width:5; }
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2; }
    [zoom=11]{ line-width:0.2; }
    [zoom=12]{ line-width:0.2; }
    [zoom=13]{ line-width:1; }
    [zoom=14]{ line-width:1.5; }
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom>17]{ line-width:5; }
  }
}

/******************************************************************* */
