### script for extracting R chunks from all *.Rnw files, 
# except those that contain "FRE".
sapply(Sys.glob("*.Rnw")[-grep("FRE", Sys.glob("*.Rnw"))], 
       knitr::purl, documentation=0)  # end sapply

### script for rendering all the *.Rmd files in the cwd into *.md and *.html files.
# loop over all the *.Rmd files in the cwd, and render them into *.md and *.html files.
sapply(Sys.glob("*.Rmd"), 
       function(x) rmarkdown::render(input=file.path(getwd(), x), clean=FALSE)
       )  # end sapply



