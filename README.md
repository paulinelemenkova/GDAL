# GDAL — Raster Reprojection and Format Conversion Scripts

A set of GDAL command-line shell scripts for common geospatial raster-processing tasks: reprojecting and warping grids between coordinate reference systems and map projections, converting between raster formats, and inspecting raster metadata. The scripts document reusable GDAL recipes used to prepare grids for the author's cartographic and geophysical mapping workflows.

## What the scripts do

- Reprojection and warping (gdalwarp): reproject GeoTIFF/NetCDF grids to WGS84 (EPSG:4326) and warp to a range of map projections, including UTM, Albers Equal Area, Azimuthal Equidistant, Equal-Area Cylindrical, Cassini-Soldner, Oblique Mercator, Lambert Conformal Conic, Two-Point Equidistant and Universal Polar Stereographic (via PROJ strings).
- Format translation (gdal_translate): convert between NetCDF, GeoTIFF and binary raster formats.
- Data conversion helpers: additional binary/NetCDF/GeoTIFF conversions (with GMT convert).
- Metadata inspection (gdalinfo): report grid extent, projection, resolution and band statistics.

## Files

- 01_GDAL_gdalwarp.sh: reprojection / warping to multiple map projections
- 02_GDAL_gdal_translate.sh: format translation
- 03_GDAL_convert.sh: NetCDF / GeoTIFF / binary conversion recipes
- 04_GDAL_gdalinfo.sh: raster metadata inspection

## Requirements

- GDAL: https://gdal.org (gdalwarp, gdal_translate, gdalinfo)
- A POSIX shell (bash/sh)
- Optionally GMT for the binary/NetCDF conversion helpers

## Usage

Edit the input and output filenames (and the target PROJ / EPSG definition) inside the chosen script, then run:

    bash 01_GDAL_gdalwarp.sh

## Author

Polina Lemenkova
ORCID: https://orcid.org/0000-0002-5759-1089

These scripts support the data-preparation steps behind the author's cartographic and geophysical papers. The full publication list is available via the ORCID record above.

## License

See the LICENSE file in this repository.
