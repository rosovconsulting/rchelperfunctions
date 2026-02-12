## code to prepare `rchabits` dataset goes here
library(haven)
library(janitor)
library(dplyr)
library(forcats)

rchabits <- haven::read_sav("data-raw/rc_habits_raw.sav") %>%
  as_factor() %>%
  clean_names() %>%
  select(response_id, q1:q6_8)


# Define missing values --------------------------------------------------

## Define the placeholder values
numeric_placeholders <- c(-99, -98)
text_placeholders <- c("-99", "", "N/A", "Prefer not to answer")

## Use mutate() and across() to replace placeholders
rchabits <- rchabits |>
  mutate(
    ### Convert placeholders in numeric columns to NA
    across(
      where(is.numeric),
      ~ case_when(.x %in% numeric_placeholders ~ NA, .default = .x)
    ),
    ### Convert placeholders in character columns to NA
    across(
      where(is.character),
      ~ case_when(.x %in% text_placeholders ~ NA, .default = .x)
    ),
    ### Convert placeholders in factor columns to NA
    across(
      where(is.factor),
      ~ forcats::fct_na_level_to_value(.x, text_placeholders)
    )
  )


usethis::use_data(rchabits, overwrite = TRUE)
