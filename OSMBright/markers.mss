/* TO DO:
--Build in default display code so that points that are picked up by our psql calls
but are not covered field-specific markers either get a default marker type or
are not displayed at all (point-transform:"scale(0)")
--discuss cultural appropriateness of each marker
--consider further breaking down some marker types
--prevent KIBERA from displaying at higher zoom levels
--verify that kibera highlight is working/explore why old code didn't work
--tooltips
*/
.marker {
  [zoom = 15]{point-transform:"scale(0.1)";}
  [zoom = 16]{point-transform:"scale(0.1)";}
  [zoom = 17]{point-transform:"scale(0.15)";}
  [zoom >= 18]{point-transform:"scale(0.2)";}
}

/***********************************************/
/** EDUCATION  *********************************/
/***********************************************/
#edu [zoom >= 15]{
  point-file: url('markers/book.svg');
}


/***********************************************/
/** RELIGION  **********************************/
/***********************************************/
#religion [zoom >= 15]{
  //points with no religion specified appear as small black squares
  [religion = 'christian']{point-file: url('markers/christian.svg');}
  [religion = 'muslim']{point-file: url('markers/muslim.svg');}
}


/***********************************************/
/** HEALTH  ************************************/
/***********************************************/
#health [zoom >= 15]{
  point-file: url('markers/health.svg'); //default to cover health:facility_type IS NOT NULL
  [amenity = 'hospital']{point-file: url('markers/health.svg');}
  [amenity = 'pharmacy']{point-file: url('markers/pharmacy.svg');}
}


/***********************************************/
/** SECURITY ***********************************/
/***********************************************/
//unless otherwise noted, all of the below are prepended w/ 'security:' and have value 'yes'

/*   --LIGHT--
-light
*/
#light [zoom >= 15]{
  point-file:url('markers/light.svg');
  }

/*  --DANGEROUS SPOT--
-hatari_spot
-black_spot
*/
#danger [zoom >= 15]{
  point-file:url('markers/danger.svg');
  }

/*  --ALCOHOL--
-bar
-amenity=bar    amentiy=pub    shop=alcohol
*/
#alcohol [zoom >= 15]{
  point-file:url('markers/bottle.svg');
  }

/*  --POLICE--
-chiefs_camp
-amenity=police
*/

#police [zoom >= 15]{
  point-file:url('markers/police.svg');
  }

/*  --GENDER BASED VIOLENCE--
-gbv_support
*/
#gbv [zoom >= 15]{
  point-file:url('markers/gender_based_violence_support.svg');
  }

//NOT INCLUDED: security:other.  explore what is not already covered in previous security layers



/***********************************************/
/** WATER SANITATION ETC ***********************/
/***********************************************/
//unless otherwise noted, all of the below are prepended w/ 'watsan:' and have value 'yes'

/*   --TOILET--
-toilet_public   toilet_private
-pee_point
-bathroom
-amenity=toilets

    GROUP BY(amenity)
 count |     amenity     
-------+-----------------
   222 | 
    14 | drinking_water
     5 | waste_disposal
   499 | toilets
     1 | public_building
*/
#toilet [zoom >= 15]{
  point-file:url('markers/toilet.svg');
}

/*  --WATER--
-water_public    water_private
-amenity=drinking_water

    GROUP BY(amenity)
 count |    amenity     
-------+----------------
     7 | 
   743 | drinking_water
     4 | toilets
*/
#drinking_water [zoom >= 15]{
  point-file:url('markers/water.svg');
}

/*  --trash--
-biocentre
-dumping_site
-recycling
-amenity=recycling

    GROUP BY(amenity)
 count |    amenity     
-------+----------------
     9 | 
    28 | recycling
    13 | toilets
    45 | waste_disposal
*/
#trash [zoom >= 15]{
  point-file:url('markers/trash.svg');
}

/*  --OTHERjQuery15206719142873771489_1368808176420?--
// urban_agriculture
// man_made=water_tower
// natural=water
// other
*/
#watsan_other [zoom >= 15]{
  point-file:url('markers/trash.svg');
}
