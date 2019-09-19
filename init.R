# R script to run author supplied code, typically used to install additional R packages
# contains placeholders which are inserted by the compile script
# NOTE: this script is executed in the chroot context; check paths!

r <- getOption("repos")
r["CRAN"] <- "http://cloud.r-project.org"
options(repos=r)

 install.packages("xml2", repos = "cloud.r-project.org")
 install.packages("webutils", repos = "cloud.r-project.org")

 install.packages("remotes")

 remotes::install_github("plotly/dashR", upgrade = TRUE)

 install.packages("ipred", dependencies = TRUE)
 install.packages("caret", dependencies = TRUE)
 install.packages("kernlab", dependenceis = TRUE)
 install.packages("ROCR", dependencies = TRUE)
 install.packages("e1071", dependencies = TRUE)

