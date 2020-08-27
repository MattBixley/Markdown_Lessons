# Install required packages
if (!require(tidyverse)) {
  install.packages("tidyverse")
}

if (!require(here)) {
  install.packages("here")
}

if (!require(janitor)) {
  install.packages("janitor")
}

if (!require(palmerpenguins)) {
  install.packages("palmerpenguins")
}


if (!file.exists(here::here("Data/"))) {
  dir.create(here::here("Data/"))
}

# Create the data sets if they don't exist
if (!(file.exists(here::here("Data/dream.csv")) &
      file.exists(here::here("Data/biscoe.csv")) &
      file.exists(here::here("Data/torgersen.csv")) )) {
  islands <- unique(palmerpenguins::penguins_raw$Island)

  create_island_file <- function(island_name){
    palmerpenguins::penguins_raw %>%
      dplyr::filter(Island == island_name) %>%
      readr::write_csv(path = here::here("Data/",stringr::str_c(tolower(island_name),".csv")))
  }

  purrr::walk(islands, create_island_file)

}
