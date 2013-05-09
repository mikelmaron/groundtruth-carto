@text: "Helvetica Neue Bold", "Helvetica Bold", "Arial Bold";

Map{background-color: lighten(#fffdfa, 0);}

//optimized for zoom 15
@major: #f76939;
@minor: #ec8907;
@foot: #946a16;
@major_width: 6;

#road {
  [Type = 'living_street'],  
  [Type = 'pedestrian'],
  [Type = 'path'],
  [Type = 'footway'],
  [Type = 'level crosing']{
    line-color: @foot;
    /*text-face-name: @text;
    text-name: [Name];
    text-size: 10;
    text-placement: line;
    text-fill: #fff;
    text-halo-radius: 1;
    text-halo-fill: #000;*/
    [zoom > 16]{
      line-width: 1;
      line-dasharray: 4, 3;
      }
    [zoom <= 16]{
      line-width: 0.8;
      line-dasharray: 3, 2;
      }
    [zoom <= 14]{
      line-width: 0.4;
      line-dasharray: 2, 1;
      }
  }
  [Type = 'residential'],
  [Type = 'unclassified'],
  [Type = 'service'],
  [Type = 'track'],
  [Type = 'road']{
    line-color: @minor;
    [zoom > 16]{
      line-width: 1.5;
      }
    [zoom <= 16]{
      line-width: 1;
      }
    [zoom <= 14]{
      line-width: 0.6;
      }
  }
  [Type = 'secondary'],
  [Type = 'tertiary']{
    [zoom > 16]{
      line-width: @major_width *1.5;
      line-color:@major;
        ::halo{
        line-width: @major_width * 0.75;
        line-color: spin(lighten(@major, 30), -10);
        }
    }
    [zoom <= 16]{
      line-width: @major_width * 1.0;
      line-color:@major;
        ::halo{
        line-width: @major_width * 0.5;
        line-color: spin(lighten(@major, 30), -10);
        }
    }
    [zoom <= 14]{
      line-width: @major_width * 0.75;
      line-color:@major;
        ::halo{
        line-width: @major_width * 0.4;
        line-color: spin(lighten(@major, 30), -10);
        }
    }
  }
}




/*
#"secondary" 		"6"     Administrative classification
#"tertiary" 		"4"     tend to have dashed lines down the middle

#"residential" 		"81"    Roads which are primarily lined with housing
#"unclassified" 	"93"    minor public roads which are not residential and of a lower classification than tertiary
#"service" 			"14"    For access roads to/within an industrial estate    
#"track" 			"62"    rough with unpaved/unsealed surfaces
#"road" 			"1"     unknown classification

#"living_street" 	"50"    residential streets where pedestrians have legal priority over cars      
#"pedestrian" 		"1"     mainly/exclusively for pedestrians
#"path" 			"35"    A non-specific or shared-use path
#"footway" 			"213"   mainly/exclusively for pedestrians
#"level crosing" 	"1"     rails and roads cross  

# rough priority:
# Major Roads:	secondary, tertiary, [road]
# Minor Roads:	residential, unclassified, service, track, living_street
# Pedestrian:	pedestrian, path, footway
# Other:		level crossing [looks like it would fit into pedestrian
*/



/*********************************************************************/
/*********************************************************************/
/*********************************************************************/
/*********************************************************************/
#road_large {
  [highway = 'living_street'],  
  [highway = 'pedestrian'],
  [highway = 'path'],
  [highway = 'footway'],
  [highway = 'level crosing']{
    line-color: @foot;
    /*text-face-name: @text;
    text-name: [Name];
    text-size: 10;
    text-placement: line;
    text-fill: #fff;
    text-halo-radius: 1;
    text-halo-fill: #000;*/
    [zoom > 16]{
      line-width: 1;
      line-dasharray: 4, 3;
      }
    [zoom <= 16]{
      line-width: 0.8;
      line-dasharray: 3, 2;
      }
    [zoom <= 14]{
      line-width: 0.4;
      line-dasharray: 2, 1;
      }
  }
  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'service'],
  [highway = 'track'],
  [highway = 'road']{
    line-color: @minor;
    [zoom > 16]{
      line-width: 1.5;
      }
    [zoom <= 16]{
      line-width: 1;
      }
    [zoom <= 14]{
      line-width: 0.6;
      }
  }
  [highway = 'secondary'],
  [highway = 'tertiary']{
    [zoom > 16]{
      line-width: @major_width *1.5;
      line-color:@major;
        ::halo{
        line-width: @major_width * 0.75;
        line-color: spin(lighten(@major, 30), -10);
        }
    }
    [zoom <= 16]{
      line-width: @major_width * 1.0;
      line-color:@major;
        ::halo{
        line-width: @major_width * 0.5;
        line-color: spin(lighten(@major, 30), -10);
        }
    }
    [zoom <= 14]{
      line-width: @major_width * 0.75;
      line-color:@major;
        ::halo{
        line-width: @major_width * 0.4;
        line-color: spin(lighten(@major, 30), -10);
        }
    }
  }
}



#secondary-json {
  line-width:1;
  line-color:#168;
}
