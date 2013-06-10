.marker {
  [zoom < 15]{point-transform:"scale(0)"; marker-width: 0;}
  [zoom = 15]{point-transform:"scale(0.1)"; marker-width: 10;}
  [zoom = 16]{point-transform:"scale(0.1)"; marker-width: 10;}
  [zoom = 17]{point-transform:"scale(0.15)"; marker-width: 14;}
  [zoom >= 18]{point-transform:"scale(0.2)"; marker-width: 18;}
  //add an invisible marker on top of each svg symbols to allow for smoother hover interactivity
  marker-allow-overlap:true;
  marker-opacity:0;
}


/***********************************************/
/** WATER SANITATION ETC ***********************/
/***********************************************/

// default
#watsan {
  point-file:url('../markers/toilet.svg');
  }

/*   --TOILET--

    GROUP BY(amenity)
 count |     amenity     
-------+-----------------
   222 | 
    14 | drinking_water
     5 | waste_disposal
   499 | toilets
     1 | public_building
*/
#watsan ["watsan:toilet_public"='yes'],
#watsan ["watsan:toilet_private"='yes'],
#watsan ["watsan:pee_point"='yes'],
#watsan ["watsan:bathroom"='yes'],
#watsan [amenity='toilets']{
  point-file:url('../markers/toilet.svg');
}

/*  --WATER--
    GROUP BY(amenity)
 count |    amenity     
-------+----------------
     7 | 
   743 | drinking_water
     4 | toilets
*/
#watsan ["watsan:water_public"='yes'],
#watsan ["watsan:water_private"='yes'],
#watsan [amenity='drinking_water']{
  point-file:url('../markers/water.svg');
}

/*  --trash--
    GROUP BY(amenity)
 count |    amenity     
-------+----------------
     9 | 
    28 | recycling
    13 | toilets
    45 | waste_disposal
*/
#watsan ["watsan:biocentre"='yes'],
#watsan ["watsan:dumping_site"='yes'],
#watsan ["watsan:recycling"='yes'],
#watsan [amenity='recycling']{
  point-file:url('../markers/trash.svg');
}

/*  --OTHER--
// urban_agriculture
// man_made=water_tower
// natural=water
// other
*/
#watsan ["watsan:urban_agriculture"='yes'],
#watsan ["watsan:other"='yes'],
#watsan [man_made='water_tower'],
#watsan ["natural"='water']{
  point-file:url('../markers/trash.svg');
}
