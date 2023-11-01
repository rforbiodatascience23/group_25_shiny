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
    shiny::sidebarLayout(
      shiny::sidebarPanel(
        shiny::textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      shiny::mainPanel(
        shiny::plotOutput(
          outputId = ns("abundance")
        )

      )
    )
  )
}


#' plot_mod Server Functions
#'
#' @noRd
mod_plot_mod_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

    output$abundance <- renderPlot({
      centraldogma::plot_character_frequency(input$peptide)
    })

  })
}


## To be copied in the UI
# mod_plot_mod_ui("plot_mod_1")

## To be copied in the server
# mod_plot_mod_server("plot_mod_1")
