#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom ggplot2 theme
#' @import centraldogma
#' @noRd
app_server <- function(input, output, session) {
  mod_plot_mod_server("plot_mod_1")
  mod_from_dna_to_pep_server("from_dna_to_pep_1")
  output$abundance <- renderPlot({
    if(input$peptide == ""){
      NULL
    } else{
      input$peptide |>
        centraldogma::plot_character_frequency() +
        ggplot2::theme(legend.position = "none")
    }
  })
}



# Copy in the following code in the module script when creating a new module
#
# if(FALSE){ # Testing
#   golem::detach_all_attached()
#   golem::document_and_reload()
#   ui <- mod_NAME_ui("NAME_ui_1") # replace NAME here
#   server <- function( input,output,session){
#     mod_NAME_server("NAME_ui_1") # and here
#   }
#   shiny::shinyApp(ui, server)
# }
