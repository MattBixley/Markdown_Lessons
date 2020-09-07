rmarkdown::render("markdown_parameters.Rmd", params = list(island = "torgersen"))

rmarkdown::render("markdown_parameters.Rmd", params = "ask")

rmarkdown::render("markdown_parameters.Rmd", params = list(island = "dream"), 
                  output_file = paste0("penguins_", params$island, ".docx"))

render_report = function(x) {
  rmarkdown::render(
    "markdown_parameters.Rmd", 
    params = list(island = x, doc_title = x),
    output_file = paste0("penguins_", x,".docx")
  )
}

render_report("torgersen")

render_list <- list("dream", "biscoe", "torgersen")
purrr::walk(render_list, render_report)



