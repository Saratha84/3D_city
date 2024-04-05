libs<-c(
  "terra","sf",
  "rayshader"
)
installed_libraries<-libs%in% rownames(
  installed.packages()
)

if (any(installed_libraries == FALSE)) {
  install.packages(
    libs[!installed_libraries]
  )
}


invisible(
  lapply(
    libs,library,
    character.only=T
  )
)

lidar_url<-"https://ns_hwh.fundaments.nl/hwh-ahn/ahn4/03a_DSM_0.5m/R_30FZ1.zip"
lidar_file<-basename(lidar_url)
download.file(
  url=lidar_url,
  destfile=lidar_file,
  mode="wb",
  timeout=120
)
unzip(lidar_file)
https://geotiles.citg.tudelft.nl/Luchtfoto_2023/RGB_30FZ1.tiff
