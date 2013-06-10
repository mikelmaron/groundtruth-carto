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
/** HEALTH  ************************************/
/***********************************************/
/*
(SELECT name, amenity, "health_facility:type" AS type, way 
FROM planet_osm_point 
WHERE amenity IN ('hospital','pharmacy') OR "health_facility:type" IS NOT NULL)
AS data


SELECT count(*), amenity
FROM planet_osm_point 
WHERE amenity IN ('hospital','pharmacy') OR "health_facility:type" IS NOT NULL 
GROUP BY amenity;

 count |      amenity      
-------+-------------------
    16 | 
     1 | Lex Chemist
     4 | dentist
   233 | pharmacy
   206 | hospital
     7 | public_building
     1 | place_of_worship
     1 | community chemist
     1 | chemist


SELECT count(*), "health_facility:type"
FROM planet_osm_point
WHERE amenity IN ('hospital','pharmacy') OR "health_facility:type" IS NOT NULL 
GROUP BY "health_facility:type";

 count |     health_facility:type     
-------+------------------------------
   274 | 
     1 | Health clinic
     3 | vct_center
     2 | nursing_home_with_maternity
    59 | medical_clinic
     4 | health_programme
    10 | herbalist
     1 | laboratory
     1 | rehabilitation_center
     1 | Community based organization
     1 | Dispensing drugs
     7 | health_center
    46 | chemist_over_the_counter
    48 | chemist_dispensing
     5 | other
     1 | clinic
     1 | training_institution
     5 | dental_clinic


*/


#health {
  point-file: url('../markers/question.svg'); //default to cover health:facility_type IS NOT NULL
  [amenity = 'hospital']{point-file: url('../markers/health.svg');}
  [amenity = 'pharmacy']{point-file: url('../markers/pharmacy.svg');}
}
