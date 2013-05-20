@offset: #979797;
@offset-n: 1;

#boundary [boundary = 'administrative']{
  polygon-opacity:1;
  polygon-fill:#f3eded;
  [zoom = 13]{polygon-fill:orange;}
  [zoom > 16]{line-width: 1.2;}
  [zoom <= 16]{line-width: 1;}
  [zoom <= 14]{line-width: 0.5;}
  line-opacity: 1;
  line-color: @offset;
  line-miterlimit: 2;
  ::offset{
     line-opacity: 0.2;
  [zoom > 16]{line-width: 8;}
  [zoom <= 16]{line-width: 3;}
  [zoom <= 14]{line-width: 1.5;}
  //    clockwise vs. counter-
  [name = "Raila"]{line-color: @offset; line-offset: -3;}
  [name = "Mashimoni"]{line-color: @offset; line-offset: 3;}
  [name = "Kianda"]{line-color: @offset; line-offset: -3;}
  [name = "Gatwekera"]{line-color: @offset; line-offset: 3;}
  [name = "Soweto West"]{line-color: @offset; line-offset: 3;}
  [name = "Kisumu Ndogo"]{line-color: @offset; line-offset: 3;}
  [name = "Kambi Muru"]{line-color: @offset; line-offset: 3;}
  [name = "Karanja"]{line-color: @offset; line-offset: 3;}
  [name = "Lindi"]{line-color: @offset; line-offset: -3;}
  [name = "Laini Saba"]{line-color: @offset; line-offset: 3;}
  [name = "Makina"]{line-color: @offset; line-offset: 3;}
  [name = "Ayany"]{line-color: @offset; line-offset: 3;}
  [name = "Silanga"]{line-color: @offset; line-offset: 3;}
  [name = "Soweto East"]{line-color: @offset; line-offset: 3;}
  }
}


/*
[boundary = administrative]
name =
Raila
Mashimoni
Kianda
Gatwekera
Soweto West
Kisumu Ndogo
Kambi Muru
Karanja
Lindi
Laini Saba
Makina
Ayany
Silanga
Soweto East

[boundary = political]
name =
Kibera Resettlement Decanting Site
Makina
Nyayo Highrise
Slum upgrading area
Mugumoini
Woodley/Golf course/ Kenyatta
Sarang&apos;ombe
Lindi
Laini Saba

[landuse = resident]
name = ""
*/

