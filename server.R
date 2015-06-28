
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(CausalImpact)
library(CompareImpact)

shinyServer(function(input, output) {
   # data("promo_data")

  output$CompareImpactPlot <- renderPlot({
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    ex1 <- read.csv(inFile$datapath)
    use.data <- CompareImpact(ex1, c(1, input$tp), c(input$tp + 1, 90))
    CreateCompImpPlot(use.data)
    
  })
  
})
