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
#security {
  point-file:url('../markers/question.svg');
  }


//   --LIGHT--
#security ["security:light"='yes']{
  point-file:url('../markers/light.svg');
  }


//  --DANGEROUS SPOT--
#security ["security:hatari_spot"='yes'],
#security ["security:black_spot"='yes']{
  point-file:url('../markers/danger.svg');
  }


//  --ALCOHOL--
#security ["security:bar"='yes'],
#security ['amenity'='bar'],
#security ['amenity'='pub'],
#security ['shop'='alcohol'] {
  point-file:url('../markers/bottle.svg');
  }


//  --POLICE--
#security ["security:chiefs_camp"='yes'],
#security [amenity='police']{
  point-file:url('../markers/police.svg');
  }


//  --GENDER BASED VIOLENCE--
#security ["security:gbv_support"='yes']{
  point-file:url('../markers/gender_based_violence_support.svg');
  }






