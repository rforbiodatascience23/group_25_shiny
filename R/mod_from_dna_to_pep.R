#' from_dna_to_pep UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_from_dna_to_pep_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, shiny::uiOutput(ns("DNA"))),
      column(4, shiny::numericInput(
        inputId = ns("dna_length"),
        value = 6000,
        min = 3,
        max = 100000,
        step = 3,
        label = "Random DNA length"
      ),
        shiny::actionButton(
          inputId = ns("generate_dna"),
          label = "Generate random DNA", style = "margin-top: 18px;"
        ))
    ),
    shiny::verbatimTextOutput(outputId = ns("peptide")) |>
      shiny::tagAppendAttributes(style = "white-space: pre-wrap;")

  )
}

#' from_dna_to_pep Server Functions
#'
#' @noRd
mod_from_dna_to_pep_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_from_dna_to_pep_ui("from_dna_to_pep_1")

## To be copied in the server
# mod_from_dna_to_pep_server("from_dna_to_pep_1")
