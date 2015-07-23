library(shiny)
mgpRegModel <- function(wt, am, hp)  {
    34.00287512 + 
        (2.08371013) * as.numeric(am) + 
        (-2.87857541) * wt +
        (-0.03747873) * hp - 0.3788
}

shinyServer(
    function(input, output) {
        output$inputWeight <- renderPrint({input$wt})
        output$inputHP <- renderPrint({input$hp})
        output$inputAM <- renderPrint({input$am})
        output$predictionMPG <- renderPrint({mgpRegModel(input$wt, input$am, input$hp)})
        output$odate <- renderPrint({input$date})
        output$newBoxplot <- renderPlot({
            boxplot(mpg ~ am, data = mtcars, col = (c("blue", "orange")), 
                    main="Automatic vs Manual transmission for MPG", 
                    xlab="transmission", ylab="Miles Per Gallon (mpg)")
        })
    }
)
