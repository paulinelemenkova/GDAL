#!/bin/sh
# install
#conda install -c conda-forge gdal
# ! лучше устанавливать GDAL через brew, т.к. conda меняет PATH к питоновским библиотекам (если устанавливать его после установки gdal, то пути к Matplotlib/Seaborn/Pandas/Scipy не работают
brew install gdal
# после:
# to have nss first in your PATH run:
echo 'export PATH="/usr/local/opt/nss/bin:$PATH"' >> ~/.bash_profile
# For compilers to find nss you may need to set:
export LDFLAGS="-L/usr/local/opt/nss/lib"
export CPPFLAGS="-I/usr/local/opt/nss/include"
# For pkg-config to find nss you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/nss/lib/pkgconfig"
# installed: /usr/local/Cellar/gdal/2.4.1_1: 304 files, 57.2MB
# путь в погреб (сходить посмотреть на gdal):
# Command+Shift+G /usr/local/Cellar

# Purpose: test GDAL raster programs
pwd
cd /Users/pauline

# 1. gdalinfo lists various information about a GDAL supported raster dataset.
gdalinfo topo_NN_KKT.nc
gdalinfo topo_NN_KKT.nc -json # in JSON format
gdalinfo topo_NN_KKT.nc -mm # computation of the min/max values for each band in the dataset.
gdalinfo topo_NN_KKT.nc -stats # Read and display image statistics.
gdalinfo topo_NN_KKT.nc -approx_stats
gdalinfo topo_NN_KKT.nc -hist # Report histogram information for all bands.
gdalinfo topo_NN_KKT.nc -proj4
