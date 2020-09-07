rmarkdown::render("markdown_parameters.Rmd", params = list(island = "torgersen"))

rmarkdown::render("markdown_parameters.Rmd", params = "ask")

rmarkdown::render("markdown_parameters.Rmd", params = list(island = "dream"), 
                  output_file = paste0("penguins_", params$island, ".docx"))

render_report = function(island) {
  rmarkdown::render(
    "markdown_parameters.Rmd", 
    params = list(island = island),
    output_file = paste0("penguins_",island,".docx")
  )
}

render_report("torgersen")

islands <- list("dream", "biscoe", "torgersen")
purrr::walk(islands, render_report)



