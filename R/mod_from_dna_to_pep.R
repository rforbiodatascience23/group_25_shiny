#' from_dna_to_pep UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_from_dna_to_pep <- function(id){
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
    dna <- reactiveVal() #object should react to user input
    ns <- session$ns
    output$DNA <- renderUI({ #create ui field
      textAreaInput(
        inputId = ns("DNA"),
        label = "DNA sequence",
        placeholder = "Insert DNA sequence",
        value = dna(),
        height = 100,
        width = 600
      )
    })
    observeEvent(input$generate_dna, {
      dna(
        centraldogma::generate_DNA(input$DNA_length) #insert package function 1
      )
    })
    output$peptide <- renderText({
      # Ensure input is not NULL (loading the app) and is longer than 2 characters
      if(is.null(input$DNA)){
        NULL
      } else if(nchar(input$DNA) < 3){
        NULL
      } else{
        input$DNA |>
          toupper() |> #input is uppercase
          centraldogma::transcription() |>
          centraldogma::mRNA_to_codons() |>
          centraldogma::translation()
      }
    })
  })
}

## To be copied in the UI
# mod_from_dna_to_pep_ui("from_dna_to_pep_1")

## To be copied in the server
# mod_from_dna_to_pep_server("from_dna_to_pep_1")
