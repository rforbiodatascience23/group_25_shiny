#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
}

# Copy in the following code in the module script when creating a new module
'''
if(FALSE){ # Testing
  golem::detach_all_attached()
  golem::document_and_reload()
  ui <- mod_NAME_ui("NAME_ui_1") # replace NAME here
  server <- function( input,output,session){
    mod_NAME_server("NAME_ui_1") # and here
  }
  shiny::shinyApp(ui, server)
}
'''
