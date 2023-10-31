#' plot_mod UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_plot_mod_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        "peptide_sequence"
      ),
      mainPanel(
        "plot"
      )
    )

  )
}

#' plot_mod Server Functions
#'
#' @noRd
mod_plot_mod_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_plot_mod_ui("plot_mod_1")

## To be copied in the server
# mod_plot_mod_server("plot_mod_1")
