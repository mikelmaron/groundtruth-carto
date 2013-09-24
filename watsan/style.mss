.marker [zoom >= 13]{
  [zoom = 13]{point-transform:"scale(0.04)"; marker-width: 4;}
  [zoom = 14]{point-transform:"scale(0.06)"; marker-width: 6;}
  [zoom = 15]{point-transform:"scale(0.08)"; marker-width: 8;}
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
#watsan ["watsan:toilet_public"='yes'][zoom >= 13],
#watsan ["watsan:toilet_private"='yes'][zoom >= 13],
#watsan ["watsan:pee_point"='yes'][zoom >= 13],
#watsan ["watsan:bathroom"='yes'][zoom >= 13],
#watsan [amenity='toilets'][zoom >= 13]{
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
#watsan ["watsan:water_public"='yes'][zoom >= 13],
#watsan ["watsan:water_private"='yes'][zoom >= 13],
#watsan [amenity='drinking_water'][zoom >= 13]{
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
#watsan ["watsan:biocentre"='yes'][zoom >= 13],
#watsan ["watsan:dumping_site"='yes'][zoom >= 13],
#watsan ["watsan:recycling"='yes'][zoom >= 13],
#watsan [amenity='recycling'][zoom >= 13]{
  point-file:url('../markers/trash.svg');
}

/*  --OTHER--
// urban_agriculture
// man_made=water_tower
// natural=water
// other
*/
#watsan ["watsan:urban_agriculture"='yes'][zoom >= 13],
#watsan ["watsan:other"='yes'][zoom >= 13],
#watsan [man_made='water_tower'][zoom >= 13],
#watsan ["natural"='water'][zoom >= 13]{
  point-file:url('../markers/trash.svg');
}
