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
/** RELIGION  **********************************/
/***********************************************/

/*
SELECT osm_id, name, religion, way 
FROM planet_osm_point 
WHERE amenity='place_of_worship'


Select count(*), religion
FROM planet_osm_point
WHERE amenity='place_of_worship'
GROUP BY religion;

 count | religion  
-------+-----------
    32 | muslim
    12 | 
   425 | christian
     4 | hindu
     1 | jewish
*/
//TO FIX: 12 points where religion = na

#religion [zoom >= 13]{
  point-file: url('../markers/question.svg');
  [religion = 'christian']{point-file: url('../markers/christian.svg');}
  [religion = 'muslim']{point-file: url('../markers/muslim.svg');}
  [religion = 'jewish']{point-file: url('../markers/jew.svg');}
  [religion = 'hindu']{point-file: url('../markers/hindu.svg');}
}
