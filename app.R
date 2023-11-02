# Launch the ShinyApp (Do not remove this comment)
# To deploy, run: rsconnect::deployApp()
# Or use the blue button on top of this file

# Check if the 'centraldogma' package is installed. If not, prompt the user to install it.
if (!requireNamespace("centraldogma", quietly = TRUE)) {
  stop("The 'centraldogma' package is not installed. Please install it using devtools::install_github('rforbiodatascience23/group_25_package')")
}

# Set production options
options("golem.app.prod" = TRUE)

# Source additional scripts if necessary
# source("R/mod_from_dna_to_pep.R")

# Run the app using the fully qualified namespace
centraldogma::run_app() # add parameters here (if any)
