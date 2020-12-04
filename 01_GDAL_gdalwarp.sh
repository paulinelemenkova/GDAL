#!/bin/sh
# gdalwarp code to convert GeoTIFF file from XY Cartesian to WGS84
gdalwarp -t_srs EPSG:4326 ETOPO1_Bed_g_geotiff.tif ETOPO1_WGS84.tif

# stored in GeoTIFF in WGS84 warped to a UTM projection, Zone 56:
gdalwarp -t_srs '+proj=utm +zone=56 +datum=WGS84' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_UTM56.tif

# stored in GeoTIFF in WGS84 warped to a Albers Equal Area projection:
gdalwarp -t_srs '+proj=aea +lat_1=45 +lat_2=55 +lon_0=155 +datum=WGS84' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_AEA2.tif -overwrite

# stored in GeoTIFF in WGS84 warped to an Azimuthal Equidistant projection:
gdalwarp -t_srs '+proj=aeqd lat_ts=50 lat_0=50 lon_0=155' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_AzEd.tif -overwrite

# stored in GeoTIFF in WGS84 warped to an Equal Area Cylindrical projection:
gdalwarp -t_srs '+proj=cea lat_ts=50 lon_0=155' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_EAC.tif

# stored in GeoTIFF in WGS84 warped to an Cassini (Cassini-Soldner) equirectangular projection:
gdalwarp -t_srs '+proj=cass lat_0=50 lon_0=155' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_C.tif

# stored in GeoTIFF in WGS84 warped to a Oblique Mercator projection:
gdalwarp -t_srs '+proj=omerc +lat_1=45 +lat_2=55 lon_1=177 lon_2=210 +ellps=GRS80' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_OM.tif -overwrite

# stored in GeoTIFF in WGS84 warped to a Lambert Conformal Conic projection:
gdalwarp -t_srs '+proj=lcc +lon_0=155 +lat_1=45 +lat_2=55 +datum=WGS8' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_LCC.tif -overwrite

# stored in GeoTIFF in WGS84 warped to a Two Point Equidistant Azimuthal projection:
gdalwarp -t_srs '+proj=tpeqd +lat_1=45 +lat_2=55 +lon_1=100 +lon_2=120' ETOPO1_KKT_WGS84.tif ETOPO1_KKT_2p.tif -overwrite

# stored in GeoTIFF in WGS84 warped to a UPS projection (Universal Polar Stereographic):
gdalwarp -t_srs '+proj=ups +south +datum=WGS84' ant_sed_wgs84.nc ant_sed_ups.nc -overwrite

# gdalwarp code to convert GeoTIFF file from XY Cartesian to WGS84, from NetCDF to GeoTIFF
gdalwarp -t_srs EPSG:4326 ant_sed.nc ant_sed_wgs84.tif

# check up the projection
gdalinfo ant_sed_wgs84.tif

# re-projecting to UPS projection (Universal Polar Stereographic)
gdalwarp -t_srs '+proj=ups +south +datum=WGS84' ant_sed_wgs84.tif ant_sed_ups.tif -overwrite

# check up the projection
gdalinfo ant_sed_ups.tif
