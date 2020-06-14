#!/bin/sh
# various useful codes for data conversion (netCDF 2 GeoTIFF etc)
gdal_translate -of  grav_KKT.bin dst_dataset.nc
gmt convert grav_KKT.bin -bo > grav_KKT.nc
gmt convert YOUR_FILE_NAME.bin -bo > YOUR_FILE_NAME.nc
gmt convert grav_KKT.nc -bo > grav_KKT.tiff
gdal_translate grav_KKT.nc -of GTiff -co grav_KKT.tiff
gdal_translate -of GTiff gradientKKT.nc gradientKKT.tiff
gdal_translate -of GTiff TEST.nc TEST.tiff
