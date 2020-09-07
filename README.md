# Markdown_Lessons

# Setup

**Download the repository**, either:
- By clicking on the green code box in the right corner
- If you have the `use_this` package installed this can be done from within R using
```
usethis::use_course(url = "https://github.com/MattBixley/Markdown_Lessons/archive/master.zip", 
    destdir = "~/Desktop")
```

After opening the R Project, make sure to run this code beforehand to make sure you are all set up.

```{r prerequsites, eval = FALSE, include = FALSE}
# RUN THE FOLLOWING TO SET UP REQUIRED PACKAGES AND DATA
# BEFORE FIRST COMPILING THIS RMD
# (only need to do once)
source("scripts/setup.R")
```

## 1. Introductory Markdown

- Objectives
  * Write a reproducible report
  * set up
  * code chunks
  * tables
  * plots
  * captions/figures
  * citations

## 2. Extended Markdown

- Objectives
    * report template
        - msword
        - pdfs
    * parameters
        - input
        - output
    * bookdown
        - cross references
        
### Resources  
More detailed tutorials and examples can be found at the following

[RStudio/RMarkdown](https://rmarkdown.rstudio.com)  
[R Markdown for Scientists](https://rmd4sci.njtierney.com/)  
[R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
[R for Data Science](https://r4ds.had.co.nz/index.html)


#### Data  
The Palmer Penguins dataset used can be found [here](https://allisonhorst.github.io/palmerpenguins/)
