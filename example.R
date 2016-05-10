library(C3)
library(shiny)

runApp(list(
  ui = bootstrapPage(
    actionButton("update","update gauge"),
    # example use of the automatically generated output function
    C3GaugeOutput("gauge1")
  ),
  server = function(input, output) {
    # reactive that generates a random value for the gauge
    value = reactive({
      input$update
      round(runif(1,0,100),2)
    })
    # example use of the automatically generated render function
    output$gauge1 <- renderC3Gauge({ 
      # C3Gauge widget
      C3Gauge(value())
    })
  }
))