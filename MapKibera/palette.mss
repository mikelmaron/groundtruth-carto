/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@greenspace_new: #EAFAE0;

@land:              lighten(#FCFBE7, 5%);
@water:             #C4DFF6;
@grass:             @greenspace_new; //#E6F2C1;
@beach:             #FFEEC7;
@park:              @greenspace_new; //#DAF2C1;
@cemetery:          #D6DED2;
@wooded:            @greenspace_new; //#C3D9AD;
@agriculture:       #F2E8B6;

@building:          #E4E0E0;
@hospital:          rgb(229,198,195);
@school:            #f9dbc1; //#FFF5CC;
@sports:            desaturate(lighten(#B8E6B8, 5%), 10%);

@residential:       #f7f7f7; //@land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #ccc;


//@kibera: #fff0f9; //purple
@kibera: #fffbe8; //yellow
//@kibera: #e3f3ff; //map kibera blue mod
//@kibera: #e3f3ff; //map kibera blue
//@kibera: #fff5e9; //map kibera orange mod
//@kibera: #F78F1E; //map kibera orange
@highlight: saturate(darken(@kibera, 25%), 30%);


/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

// DEFAULT
@standard_line:     #b1b1b1; //@pedestrian_line; //@land * 0.85;
@standard_fill:     #b1b1b1; //@pedestrian_line; //#fff;
@standard_case:     #b1b1b1; //@pedestrian_line; //@land * 0.9;

// STYLEGROUP
@motorway_line:     #f19f88;
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@mainroad_line:     @motorway_line;
@mainroad_fill:     lighten(@mainroad_line,10%);
@mainroad_case:     @mainroad_line * 0.9;

//@minorroad_line:    #b1b1b1; //gray
@minorroad_line:    #e3a96a; //orange;
@minorroad_fill:    lighten(@minorroad_line, 7%);
@minorroad_case:    @minorroad_line;

@service_line:      @minorroad_line;
@service_fill:      lighten(@service_line,7%);
@service_case:      @service_line;

@pedestrian_line:   lighten(#946a16, 10); //@standard_line;
@pedestrian_fill:   @pedestrian_line; //#FAFAF5;
@pedestrian_case:   @pedestrian_line; //@land;

@cycle_line:        @pedestrian_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_line:         desaturate(lighten(#c14545, 5%), 5%);
@rail_fill:         @rail_line; //#fff;
@rail_case:         @rail_line; //@land;

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #435;
@country_halo:      @place_halo;

@state_text:        #546;
@state_halo:        @place_halo;

@city_text:         #444;
@city_halo:         @place_halo;

@town_text:         #666;
@town_halo:         @place_halo;

@poi_text:          #888;

@road_text:         #777;
@road_halo:         #fff;

@other_text:        #888;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

/* ****************************************************************** */

