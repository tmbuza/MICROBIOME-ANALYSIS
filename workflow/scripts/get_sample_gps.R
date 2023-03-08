#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

library(tidyverse, suppressPackageStartupMessages())
library(leaflet)
library(leaflet.providers)
library(htmlwidgets)
library(webshot)
library(mapview)

if (!dir.exists("images/gpsfiles")){dir.create("images/gpsfiles")}

metadata <- read_csv("data/metadata/PRJNA477349_tidy_metadata.csv", show_col_types = FALSE)

minLat <- min(metadata$latitude) - 1
minLon <- min(metadata$longitude) + 0
maxLat <- max(metadata$latitude) + .5
maxLon <- max(metadata$longitude) + 0

m <- metadata %>%
  leaflet() %>% 
  addProviderTiles(providers$Esri.NatGeoWorldMap) %>%
  fitBounds(minLon, minLat, maxLon, maxLat) %>%
  addMarkers(lng = ~longitude, lat = ~latitude, popup = ~isolate, label = ~ c(isolate)) %>%
  addCircles(color="magenta", radius = log1p(metadata$longitude) * 10)

## save html to png
saveWidget(m, "images/gpsfiles/PRJNA477349_gps.html", selfcontained = FALSE)
webshot("images/gpsfiles/PRJNA477349_gps.html", file = "images/PRJNA477349_gps.png",
        cliprect = "viewport")



# NCBI BioProject PRJNA802976: IBD responses to biologic therapies study
library(tidyverse, suppressPackageStartupMessages())

metadata <- read_csv("data/metadata/PRJNA802976_tidy_metadata.csv", show_col_types = FALSE)

minLat <- min(metadata$latitude) - 1
minLon <- min(metadata$longitude) + 0
maxLat <- max(metadata$latitude) + .5
maxLon <- max(metadata$longitude) + 0

m <- metadata %>%
  leaflet() %>% 
  addProviderTiles(providers$Esri.NatGeoWorldMap) %>%
  fitBounds(minLon, minLat, maxLon, maxLat) %>%
  addMarkers(lng = ~longitude, lat = ~latitude, popup = ~run_accession, label = ~ c(run_accession)) %>%
  addCircles(color="magenta", radius = log1p(metadata$longitude) * 10)

## save html to png
saveWidget(m, "images/gpsfiles/PRJNA802976_gps.html", selfcontained = FALSE)
webshot("images/gpsfiles/PRJNA802976_gps.html", file = "images/PRJNA802976_gps.png",
        cliprect = "viewport")



# NCBI BioProject PRJEB21612: 
library(tidyverse, suppressPackageStartupMessages())

metadata <- read_csv("data/metadata/PRJEB21612_tidy_metadata.csv", show_col_types = FALSE)

minLat <- min(metadata$latitude) - 1
minLon <- min(metadata$longitude) + 0
maxLat <- max(metadata$latitude) + .5
maxLon <- max(metadata$longitude) + 0

m <- metadata %>%
  leaflet() %>% 
  addProviderTiles(providers$Esri.NatGeoWorldMap) %>%
  fitBounds(minLon, minLat, maxLon, maxLat) %>%
  addMarkers(lng = ~longitude, lat = ~latitude, popup = ~run_accession, label = ~ c(run_accession)) %>%
  addCircles(color="magenta", radius = log1p(metadata$longitude) * 10)

## save html to png
saveWidget(m, "images/gpsfiles/PRJEB21612_gps.html", selfcontained = FALSE)
webshot("images/gpsfiles/PRJEB21612_gps.html", file = "images/PRJEB21612_gps.png",
        cliprect = "viewport")