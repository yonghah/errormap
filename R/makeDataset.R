url <- "https://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Demographics/ESRI_Census_USA/MapServer/3"
df <- esri2sf(url, outFields=c("FIPS"))
att_raw <- read.csv("~/Downloads/mort.csv")
library(dplyr)
library(sf)
att <- select(att_raw, FIPS, Category,
              Mortality.Rate..2014., 
              Mortality.Rate..2014...Min., 
              Mortality.Rate..2014...Max.) %>%
  filter(Category=="Self-harm and interpersonal violence") %>% 
  filter(FIPS > 1000) %>%
  mutate(FIPS = sprintf("%05d", FIPS)) %>%
  mutate(Mortality.Rate..2014...Interval. = Mortality.Rate..2014...Max. - Mortality.Rate..2014...Min.)

# FIPS 46113 has changed to 46012
df$FIPS[df$FIPS=='46113'] <- '46102'

joined <- inner_join(df, att)
plot(joined["Mortality.Rate..2014."])
st_write(joined, "mortality.geojson")
