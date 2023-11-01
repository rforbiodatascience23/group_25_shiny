# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

if (!requireNamespace("centraldogma", quietly = TRUE)) {
  devtools::install_github("rforbiodatascience23/group_25_package")
}
library(centraldogma)
pkgload::load_all(export_all = FALSE,helpers = FALSE,attach_testthat = FALSE)
options( "golem.app.prod" = TRUE)
source("R/mod_from_dna_to_pep.R")
centraldogma::run_app() # add parameters here (if any)
