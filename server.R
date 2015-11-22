bmi <- function(weight,height) weight / height^2 * 703
shinyServer(
  function(input, output) {
    output$oid1 <- renderPrint({input$weight})
    output$oid2 <- renderPrint({input$height})
    output$prediction <- renderPrint({bmi(input$weight,input$height)})
  }
)