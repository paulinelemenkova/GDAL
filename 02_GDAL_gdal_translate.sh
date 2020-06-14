#!/bin/sh
# cut out an image subset from initial big image using boundary 'clockwise' coordinates W N E S (equivalent to xMin, yMax, xMax, yMin). Here: cut off Kuril-Kamchatka area from the World map
gdal_translate -projwin 140.0000 60.0000 170.0000 40.0000 ETOPO1_WGS84.tif ETOPO1_KKT_WGS84.tif 
