# Open the project in RStudio, and then run this file
# This file installs or updates packages and render the R Markdown file

# Update packages or install if needed
update.packages(ask = FALSE, checkBuilt = TRUE) 
if(!require(tinytex)){  # Install or update LaTex
  install.packages('tinytex')
  tinytex::install_tinytex()
} else {
  tinytex::tlmgr_update() # tinytex::reinstall_tinytex() # tlmgr: Remote repository is newer than local (2018 < 2019)
}

# Download last version. See auriga folder for older versions
download.file("https://raw.githubusercontent.com/anishathalye/auriga/master/beamerthemeauriga.sty", "beamerthemeauriga.sty") 
download.file("https://raw.githubusercontent.com/anishathalye/auriga/master/beamercolorthemeauriga.sty", "beamercolorthemeauriga.sty")

library(rmarkdown)
rmarkdown::render("template.Rmd")
rmarkdown::render("README.Rmd")