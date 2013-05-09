#road {
  line-width: 1;
  [Type = 'secondary'],
  [Type = 'tertiary']{line-color: #f00;}
  
  [Type = 'residential'],
  [Type = 'unclassified'],
  [Type = 'service'],
  [Type = 'track'],
  [Type = 'road']{line-color: #f91;}

  [Type = 'living_street'],  
  [Type = 'pedestrian'],
  [Type = 'path'],
  [Type = 'footway'],
  [Type = 'level crosing']{line-color: #fe6;}
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