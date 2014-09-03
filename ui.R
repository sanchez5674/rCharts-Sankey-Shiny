library(shiny)
library(rCharts)

shinyUI(bootstrapPage(
  div(
    class="container-fluid",
    div(class="row-fluid",
       headerPanel("Header Panel") 
    ),
    div(class="row-fluid",
        sidebarPanel(
          h4("Empty")
        ),
        mainPanel(
          tableOutput("table"),
           showOutput('sankey', '.')
        )
    )
  )
))
