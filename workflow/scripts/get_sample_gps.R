#!/Users/tmbuza/opt/anaconda3/envs/snakemake/bin/Rscript

library(tidyverse, suppressPackageStartupMessages())

metadata <- read_csv("data/metadata/PRJNA477349.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>% 
  rename(sample_id = run) %>% 
  drop_na(lat_lon) %>% 
  mutate(
    geo_loc_name = str_replace_all(geo_loc_name, "Tanzania: ", ""),
    geo_loc_name = str_replace_all(geo_loc_name, "The Greater Serengeti Ecosystem", "Serengeti"),
    geo_loc_name = str_replace_all(geo_loc_name, " Ecosystem", ""),
    isolate = str_replace_all(isolate, "_\\d*$", ""),
    lat_lon = str_replace_all(lat_lon, " E$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " S.*", "")) * -1,
    longitude = as.numeric(str_replace_all(lat_lon, ".*S ", ""))) %>% 
  rename(ecosystem = geo_loc_name) %>%
  rename(description = host) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id, ecosystem, isolate, latitude, longitude, mb_bases=bases, description)

# Sample GPS
library(leaflet)
library(leaflet.providers)
library(htmlwidgets)
library(webshot)
library(mapview)

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
saveWidget(m, "images/PRJNA477349_gps.html", selfcontained = FALSE)
webshot("images/PRJNA477349_gps.html", file = "images/PRJNA477349_gps.png",
        cliprect = "viewport")



# NCBI BioProject PRJNA802976: IBD responses to biologic therapies study
library(tidyverse, suppressPackageStartupMessages())

metadata <- read_csv("data/metadata/PRJNA802976.csv", show_col_types = FALSE) %>%  
  rename_all(tolower) %>%
  rename(sample_id = run) %>% 
  distinct(., sample_id, .keep_all = TRUE) %>% 
  mutate(
    lat_lon = str_replace_all(lat_lon, " E$", ""),
    latitude = as.numeric(str_replace_all(lat_lon, " N.*", "")),
    longitude = as.numeric(str_replace_all(lat_lon, ".*N ", ""))) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id, latitude, longitude, mb_bases=bases)

# Sample GPS
library(leaflet)
library(leaflet.providers)
library(htmlwidgets)
library(webshot)
library(mapview)

minLat <- min(metadata$latitude) - 1
minLon <- min(metadata$longitude) + 0
maxLat <- max(metadata$latitude) + .5
maxLon <- max(metadata$longitude) + 0

m <- metadata %>%
  leaflet() %>% 
  addProviderTiles(providers$Esri.NatGeoWorldMap) %>%
  fitBounds(minLon, minLat, maxLon, maxLat) %>%
  addMarkers(lng = ~longitude, lat = ~latitude, popup = ~sample_id, label = ~ c(sample_id)) %>%
  addCircles(color="magenta", radius = log1p(metadata$longitude) * 10)

## save html to png
saveWidget(m, "images/PRJNA802976_gps.html", selfcontained = FALSE)
webshot("images/PRJNA802976_gps.html", file = "images/PRJNA802976_gps.png",
        cliprect = "viewport")



# NCBI BioProject PRJEB21612: 
library(tidyverse, suppressPackageStartupMessages())

metadata <- read_csv("data/metadata/PRJEB21612.csv", show_col_types = FALSE) %>% 
  rename_all(tolower) %>%
  rename(sample_id = run) %>% 
  distinct(., sample_id, .keep_all = TRUE) %>% 
  mutate(bases = round(bases/1E6, digits = 0)) %>% 
  select(sample_id, latitude = "geographic_location_(latitude)", longitude = "geographic_location_(longitude)", mb_bases=bases)
 

# Sample GPS
library(leaflet)
library(leaflet.providers)
library(htmlwidgets)
library(webshot)
library(mapview)

read_csv("data/metadata/PRJEB21612_tidy_metadata.csv")

minLat <- min(metadata$latitude) - 1
minLon <- min(metadata$longitude) + 0
maxLat <- max(metadata$latitude) + .5
maxLon <- max(metadata$longitude) + 0

m <- metadata %>%
  leaflet() %>% 
  addProviderTiles(providers$Esri.NatGeoWorldMap) %>%
  fitBounds(minLon, minLat, maxLon, maxLat) %>%
  addMarkers(lng = ~longitude, lat = ~latitude, popup = ~sample_id, label = ~ c(sample_id)) %>%
  addCircles(color="magenta", radius = log1p(metadata$longitude) * 10)

## save html to png
saveWidget(m, "images/PRJEB21612_gps.html", selfcontained = FALSE)
webshot("images/PRJEB21612_gps.html", file = "images/PRJEB21612_gps.png",
        cliprect = "viewport")