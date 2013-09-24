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
/** SECURITY ***********************************/
/***********************************************/
/*
SELECT osm_id, name, amenity, shop, 
"security:light", "security:bar", "security:hatari_spot", "security:black_spot", "security:other", "security:gbv_support", "security:chiefs_camp",
way
FROM planet_osm_point
WHERE "security:light"='yes' OR "security:bar"='yes' OR "security:hatari_spot"='yes' OR "security:black_spot"='yes' OR "security:other"='yes' OR "security:gbv_support"='yes' OR "security:chiefs_camp"='yes' OR 
amenity IN ('bar', 'pub', 'police') OR shop='alcohol'

*/


//   --default to question mark
#security [zoom >= 13]{
  point-file:url('../markers/question.svg');
  }


//   --LIGHT--
#security ["security:light"='yes'][zoom >= 13]{
  point-file:url('../markers/light.svg');
  }


//  --DANGEROUS SPOT--
#security ["security:hatari_spot"='yes'][zoom >= 13],
#security ["security:black_spot"='yes'][zoom >= 13]{
  point-file:url('../markers/danger.svg');
  }


//  --ALCOHOL--
#security ["security:bar"='yes'][zoom >= 13],
#security ['amenity'='bar'][zoom >= 13],
#security ['amenity'='pub'][zoom >= 13],
#security ['shop'='alcohol'][zoom >= 13] {
  point-file:url('../markers/bottle.svg');
  }


//  --POLICE--
#security ["security:chiefs_camp"='yes'][zoom >= 13],
#security [amenity='police'][zoom >= 13]{
  point-file:url('../markers/police.svg');
  }


//  --GENDER BASED VIOLENCE--
#security ["security:gbv_support"='yes'][zoom >= 13]{
  point-file:url('../markers/gender_based_violence_support.svg');
  }






