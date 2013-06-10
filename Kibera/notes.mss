/*
6/4: possible error intorduced into Kibera project:
	- changed psql database name from osm to kibera; all layers db name now broken and can't be edited w/i TileMill due to bug
	- edit project.mml to replace all instances of "osm" w/ "kibera"
	- also changed project folder name from OSMBright to Kibera
	- tried to change project name from OSM Bright to Kibera in project.mml by replacing all '"project": "OSMBright"' w/ '"project": "Kibera"'
		- follow up on this: what is "project": "<xyz>" in project.mml, and because the project name has not yet changed, did I possibly affect something else?
*/