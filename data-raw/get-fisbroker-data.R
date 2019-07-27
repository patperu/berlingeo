library(tidyverse)
library(glue)
library(httr)
library(sf)
library(berlingeo)

lor_id_lookup <- tribble(
            ~lor_id, ~fisbroker_name, ~data_name,
            "1",      "s_lor_prog",    "lor_pgr_sf", # Prognoseraum
            "2",      "s_lor_bez",     "lor_bzr_sf", # Bezirksregion
            "3",      "s_lor_plan",    "lor_plr_sf"  # Planungsraum
)


obj_sf <- purrr::map(lor_id_lookup$fisbroker_name, function(x) {
                  sf_fisbroker(x) %>%
                  mutate(RAUMID = stringr::str_extract(gml_id, "[^.]+$")) %>%
                  select(gml_id, RAUMID, everything()) %>%
                  arrange(RAUMID)})

# source: https://github.com/mfherman/nycgeo/blob/master/data-raw/prep-geo.R#L298
# loop over list of boundaries and save to /data
purrr::walk2(obj_sf, lor_id_lookup$data_name, function(obj, name) {
       assign(name, obj)
       invoke(use_data, list(as.name(name), overwrite = TRUE))
})
