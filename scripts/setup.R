# Install required packages
need_package <- c("tidyverse", "here", "kableExtra", "palmerpenguins", "bookdown", "janitor")

install_packages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  install.packages(new.pkg, dependencies = TRUE)
}

for(i in need_package){
  install_packages(i)
}

# Split the palmer penguins data to islands

# check if a data directory exists
if (!file.exists(here::here("data/"))) {
  dir.create(here::here("data/"))
}

# Create the data sets if they don't exist
if (!(file.exists(here::here("data/dream.csv")) &
      file.exists(here::here("data/biscoe.csv")) &
      file.exists(here::here("data/torgersen.csv")) )) {
  
  # get the list of islands to split the data on 
  islands <- unique(palmerpenguins::penguins_raw$Island)
  
  # function to read, filter and write the data set
  create_island_file <- function(island_name){
    palmerpenguins::penguins_raw %>%
      dplyr::filter(Island == island_name) %>%
      readr::write_csv(path = here::here("data/",stringr::str_c(tolower(island_name),".csv")))
  }
  
  # use purrr to apply the fucntion to all the islands
  purrr::walk(islands, create_island_file)

}
