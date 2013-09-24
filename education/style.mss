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
/** EDUCATION  *********************************/
/***********************************************/
/*
(SELECT osm_id, name, amenity, "education:type", way 
FROM planet_osm_point 
WHERE amenity in ('school','kindergarten') OR "education:type" IS NOT NULL)
AS data

SELECT count(*), amenity 
FROM planet_osm_point 
WHERE amenity IN ('school', 'kindergarten') OR "education:type" IS NOT NULL 
GROUP BY amenity

 count |     amenity      
-------+------------------
     6 | 
     6 | college
     4 | place_of_worship
     1 | public_building
     3 | library
   571 | school
    68 | kindergarten

SELECT count(*), "education:type" 
FROM planet_osm_point 
WHERE amenity IN ('school', 'kindergarten') OR "education:type" IS NOT NULL 
GROUP BY "education:type"

 count |                 education:type                  
-------+-------------------------------------------------
   429 | 
    20 | secondary
    46 | primary
     3 | driving
     1 | primary,childrens home
     2 | kindergarten,nursery
     4 | tailoring
    62 | nursery
     2 | technical
     1 | nursery,tailoring,hairdressing
     1 | computer,technical,tailoring
     1 | post secondary non-formal
    42 | nursery,primary
     1 | kindergarten,primary
     1 | computer
     2 | nursery,kindergarten
     2 | primary,secondary
     2 | kindergarten,nursery,primary
     1 | kindergarten,nursery,primary,secondary
     1 | nursery,secondary
     3 | library
     8 | kindergarten
    12 | other
     1 | computer,language
     2 | nursery,kindergarten,primary
     1 | kindergarten,nursery,primary,secondry,tailoring
     2 | nursery,primary,secondary
     1 | kindergaten,nursery,primary
     3 | Private
     2 | college
*/


#edu [zoom >= 13]{
  point-file: url('../markers/book.svg');
}

