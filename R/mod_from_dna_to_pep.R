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
      column(8, "DNA_sequence"),
      column(4, "random_dna_length", "generate_dna_button")
    ),
    "peptide_sequence"
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
