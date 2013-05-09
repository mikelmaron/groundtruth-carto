#religion {
  [religion = 'christian']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/christian.svg');
    /*    text-face-name: @text;
    text-name: [name];
    text-size: 10;
    text-fill: #fff;
    text-halo-radius: 1;
    text-halo-fill: #000;
    text-dy: 10;
    text-allow-overlap: false;
    */
    [zoom > 16]{point-transform:"scale(0.15)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  [religion = 'muslim']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/muslim.svg');
    [zoom > 16]{point-transform:"scale(0.2)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //not added: two n/a
}

#watsan {
  //for water or toilet: operational/not-?
  [watsan = 'water_public']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/water.svg');
    [zoom > 16]{point-transform:"scale(0.15)";}
    [zoom <= 16]{point-transform:"scale(0.08)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  [watsan = 'toilet_public']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/toilet.svg');
    [zoom > 16]{point-transform:"scale(0.2)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  [watsan = 'dumping_site']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/trash.svg');
    [zoom > 16]{point-transform:"scale(0.18)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //not yet added: recycling, urban_agriculture, other
}


#health {
  //hospital/clinic
  [type = 'hospital'],[type = 'medical_clinic'],[type = 'clinic'],[type = 'health_center'],[type = 'Health clinic']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/health.svg');
    [zoom > 16]{point-transform:"scale(0.15)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //pharmacy
  [type = 'chemist_dispensing'],[type = 'chemist_over_the_counter'],[type = 'pharmacy'],[type = 'herbalist'],[type = 'Dispensing drugs']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/pharmacy.svg');
    [zoom > 16]{point-transform:"scale(0.2)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //many not yet addressed
}


#security {
  //lighting -- distinguish between operational and not?
  [security = 'light']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/light.svg');
    [zoom > 16]{point-transform:"scale(0.15)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //high crime/dangerous
  [security = 'bar'],[security = 'black_spot']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/danger.svg');
    [zoom > 16]{point-transform:"scale(0.2)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //official/unofficial security
  [security = 'gbv_support'],[security = 'chiefs_camp']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/police.svg');
    [zoom > 16]{point-transform:"scale(0.2)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  //not addressed: other, (Other)
}


#education {
  // anything containing regex: primary, secondary, school
  [type =~ 'primary'],[type =~ 'secondary'],[type =~ 'school']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/book.svg');
    [zoom > 16]{point-transform:"scale(0.15)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
  // same icon covering all other (not-yet categorized) subcategories
  [type =~ '.*']{
    point-file: url('/Users/jamesconkling/Documents/Projects/ground_truth/map_kibera/markers/book.svg');
    [zoom > 16]{point-transform:"scale(0.2)";}
    [zoom <= 16]{point-transform:"scale(0.1)";}
    [zoom <= 14]{point-transform:"scale(0)";}
    }
}
