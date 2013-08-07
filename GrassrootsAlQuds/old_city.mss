@outline: 3;

// barrier='sally_port' points

//order of temple mount polygons
//temple mount: barrier=wall
//landuse=village_green
//highway=pedestrian


#walls [zoom >= 13]{
  ::outline_inner{
    //building-fill: @walls;
    //building-height: 55;
    line-color:darken(@walls, 12%);
    [zoom <= 13]{ line-width: 1.5;}
    [zoom = 14]{ line-width: 2.5 + 0.5;}
    [zoom = 15]{ line-width: 3.5 + 1;}
    [zoom = 16]{ line-width: 4 + 1.5;}
    [zoom = 17]{ line-width: 5 + 2;}
    [zoom >= 18]{ line-width: 6 + 2.5;}
    }
  ::outline_outer{
    line-color:@land;
    //building-fill: @land;
    //building-height: 500;
    [zoom <= 13]{ line-width: 1; line-offset: -0.5; }
    [zoom = 14]{ line-width: 2; line-offset: -1; }
    [zoom = 15]{ line-width: 3; line-offset: -1.5; }
    [zoom = 16]{ line-width: 4; line-offset: -2; }
    [zoom = 17]{ line-width: 5; line-offset: -2.5; }
    [zoom >= 18]{ line-width: 6; line-offset: -3; }
    }
  ::offset{
    line-color:@walls;
    line-width: 0.8;
    //building-fill: @walls;
    //building-height: 16;
    [zoom <= 13]{ line-offset: -1; }
    [zoom = 14]{ line-offset: -2; }
    [zoom = 15]{ line-offset: -3; }
    [zoom = 16]{ line-offset: -4; }
    [zoom = 17]{ line-offset: -5; }
    [zoom >= 18]{ line-offset: -6; }
    }
  line-color:@walls;
  //building-fill: @walls;
  //building-height: 120;
  [zoom <= 13]{ line-width: 1; }
  [zoom = 14]{ line-width: 2; }
  [zoom = 15]{ line-width: 3; }
  [zoom = 16]{ line-width: 4; }
  [zoom = 17]{ line-width: 5; }
  [zoom >= 18]{ line-width: 6; }
}

#walls_poly {
  line-color: darken(@walls, 12%);
  polygon-fill: @walls;
  //building-height: 6;
  [zoom <= 13]{ line-width: 0; }
  [zoom = 14]{ line-width: 0; }
  [zoom = 15]{ line-width: 0.5; }
  [zoom = 16]{ line-width: 1; }
  [zoom = 17]{ line-width: 1.5; }
  [zoom >= 18]{ line-width: 2; }
  }

/* ---- BUILDINGS ---- */
#buildings[zoom>=12][zoom<=16] {
  polygon-fill:@building;
  [zoom>=14] {
    line-color:darken(@building,8%);
    line-width:0.5;
  }
  [zoom>=16] {
    line-color:darken(@building,10%);
    line-width:0.7;
  }
}
// At the highest zoom levels, render buildings in fancy pseudo-3D.
// Ordering polygons by their Y-position is necessary for this effect
// so we use a separate layer that does this for us.
#buildings[zoom>=17][type != 'hedge'] {
  building-fill:@building;
  building-height:3;
}

#buildings[zoom>=17][type = 'hedge'] {
  building-fill:@wooded;
  building-height:1.25;
}


/*

#walls [zoom >= 13]{
  ::outline{
    line-color:#bbb;
    [zoom <= 13]{ line-width: 0; }
    [zoom = 14]{ line-width: 2 + 1; }
    [zoom = 15]{ line-width: 3 + 1; }
    [zoom = 16]{ line-width: 4 + 2; }
    [zoom = 17]{ line-width: 4 + 2; }
    [zoom >= 18]{ line-width: 5 + 3; }
    }
  line-color:#888;
  [zoom <= 13]{ line-width: 1; }
  [zoom = 14]{ line-width: 2; }
  [zoom = 15]{ line-width: 3; }
  [zoom = 16]{ line-width: 4; }
  [zoom = 17]{ line-width: 4; }
  [zoom >= 18]{ line-width: 5; }
}
*/
