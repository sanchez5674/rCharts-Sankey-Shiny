library(shiny)
library(rCharts)

shinyServer(function(input, output){
  data <- reactive({
    data <- data.frame(source=c("A","A","A","B","G","H","H","L"),
               target=c("B","L","G","E","M","L","B","M"),
               value=c("1","3","2","3","2","7","2","25"))
    return(data)
  })
  
  output$table <- renderTable({
    return(data())
  })
  
  output$sankey <-  renderChart2({  
    sankeyPlot <- rCharts$new()
    sankeyPlot$setLib("http://timelyportfolio.github.io/rCharts_d3_sankey")

    sankeyPlot$set(
      data = data(),
      nodeWidth = 15,
      nodePadding = 10,
      layout = 32,
      width = 500,
      height = 500
    )
    return(sankeyPlot)
  })
})
