// teardrop icon
/*
#tourism::bottom-shadow{
  marker-allow-overlap: true;
  marker-fill: black;
  marker-opacity:0.6;
  image-filters:agg-stack-blur(4,2);
  [zoom = 4]{marker-width:6; marker-height:2;}
  [zoom = 5]{marker-width:8; marker-height:2;}
  [zoom = 6]{marker-width:12; marker-height:2;}
  [zoom = 7]{marker-width:14; marker-height:3;}
  [zoom >= 8]{marker-width:20; marker-height:4;}
  }

#tourism {
  point-file: url('../markers/tourism.svg');
  point-allow-overlap: true;
  [zoom <= 14]{point-transform:"scale(0.5) translate(0,-8)";}
  [zoom = 15]{point-transform:"scale(0.7) translate(0,-10)";}
  [zoom = 16]{point-transform:"scale(0.8) translate(0,-11)";}
  [zoom = 17]{point-transform:"scale(0.9) translate(0,-12)";}
  [zoom >= 18]{point-transform:"scale(1) translate(0,-14)";}
}
*//*
#tourism::invisible {
  marker-width:25;
  marker-opacity:0;
  marker-allow-overlap:true;
  }
*/

#tourism {
  [tourism = 'attraction']{ 
    point-file: url('../markers/camera.svg'); 
  }
  [tourism = 'artwork']{ 
    point-file: url('../markers/art.svg'); 
  }
  [tourism = 'hotel'],[tourism = 'hostel']{ 
    point-file: url('../markers/hotel.svg'); 
  }
  [tourism = 'museum']{ 
    point-file: url('../markers/museum.svg'); 
  }
  [tourism = 'viewpoint']{ 
    point-file: url('../markers/viewpoint.svg'); 
  }
  [tourism = 'information']{ 
    point-file: url('../markers/question.svg'); 
  }
  point-allow-overlap:false;
  [zoom >= 17]{ point-allow-overlap:true; }
  point-transform:"scale(0.2)";
  marker-width:20;
  marker-opacity:0;
  marker-allow-overlap:true;
}