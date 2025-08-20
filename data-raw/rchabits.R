## code to prepare `DATASET` dataset goes here
library(haven)
library(janitor)
library(dplyr)

rchabits <- haven::read_sav("data-raw/rc_habits_raw.sav") %>% 
  as_factor() %>% 
  clean_names() %>% 
  select(response_id, q1:q6_8)

usethis::use_data(rchabits, overwrite = TRUE)
