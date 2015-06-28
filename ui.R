
# CompareImpact package Example Shiny App
# author: JeongMin Kwon <cojette@gmail.com>
# CompareImpact package : http://github.io/cojette/CompareImpact

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("CompareImpactSample"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(

    fileInput('file1', 'Choose CSV File'
             ),
    tags$hr(),
        sliderInput("tp",
                    "Promotion time point",
                    min = 1,
                    max = 90,
                    value = 30), 
    hr(),
    helpText("Choose promotion time period of example data 'promo_data' in CompareImpact package")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("CompareImpactPlot")
  )
))
