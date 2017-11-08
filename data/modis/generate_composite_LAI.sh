gdalwarp -srcnodata 0 -dstnodata 0 -overwrite -t_srs '+proj=utm +zone=13 +ellps=WGS84 +datum=WGS84 +units=m +no_defs' -tr 1000 1000 HDF4_EOS:EOS_GRID:"MOD15A2.A2014241.h09v04.005.2014251132435.hdf":MOD_Grid_MOD15A2:Lai_1km MOD15A2.A2014241.h09v04.005.2014251132435.lai.tiff

gdalwarp -srcnodata 0 -dstnodata 0 -overwrite -t_srs '+proj=utm +zone=13 +ellps=WGS84 +datum=WGS84 +units=m +no_defs' -tr 1000 1000 HDF4_EOS:EOS_GRID:"MOD15A2.A2014241.h09v05.005.2014251132446.hdf":MOD_Grid_MOD15A2:Lai_1km MOD15A2.A2014241.h09v05.005.2014251132446.lai.tiff

gdalwarp -srcnodata 0 -dstnodata 0 -overwrite -t_srs '+proj=utm +zone=13 +ellps=WGS84 +datum=WGS84 +units=m +no_defs' -tr 1000 1000 HDF4_EOS:EOS_GRID:"MOD15A2.A2014241.h10v04.005.2014251131945.hdf":MOD_Grid_MOD15A2:Lai_1km MOD15A2.A2014241.h10v04.005.2014251131945.lai.tiff

gdalwarp -srcnodata 0 -dstnodata 0 -overwrite -t_srs '+proj=utm +zone=13 +ellps=WGS84 +datum=WGS84 +units=m +no_defs' -tr 1000 1000 HDF4_EOS:EOS_GRID:"MOD15A2.A2014241.h10v05.005.2014251132017.hdf":MOD_Grid_MOD15A2:Lai_1km MOD15A2.A2014241.h10v05.005.2014251132017.lai.tiff

gdalbuildvrt -srcnodata 0 -vrtnodata 0 -overwrite modis_merged.vrt *.tiff

gdalwarp -srcnodata 0 -dstnodata 0 -overwrite -tr 1000 1000 -cutline /Volumes/RECCS/GIS/bcczo_lidar_extent.shp -crop_to_cutline modis_merged.vrt modis_2014241_lai_1km.tiff

