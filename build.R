# Download, install and update required depencencies and render the project R Markdown files

# Download  required depencencies ----
download.file("https://raw.githubusercontent.com/anishathalye/auriga/master/beamerthemeauriga.sty", "beamerthemeauriga.sty") 
download.file("https://raw.githubusercontent.com/anishathalye/auriga/master/beamercolorthemeauriga.sty", "beamercolorthemeauriga.sty")

# Update or install required packages ----
update.packages(ask = FALSE, checkBuilt = TRUE) 
if(!require(tinytex)){  # Install or update LaTex
  install.packages('tinytex')
  tinytex::install_tinytex()
} else {
  tinytex::tlmgr_update() # tinytex::reinstall_tinytex() # tlmgr: Remote repository is newer than local (2018 < 2019)
}

# Render R Markdown ----
library(rmarkdown)
rmarkdown::render("template.Rmd")
rmarkdown::render("README.Rmd")