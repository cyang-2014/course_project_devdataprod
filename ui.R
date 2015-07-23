library(shiny)
data(mtcars)
shinyUI(pageWithSidebar(
    headerPanel("MilesPerGallon (MPG) prediction shiny application"),
    sidebarPanel(
        h4("Documentation:"),
        h5("The data [mtcars] was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models)."),
        h5("I have decided to use the result of multivarite regression model to predict mpg using the following predictors:"),
        sliderInput("wt", "Weight (lb/1000)", 1.5, 
                     min = 1.5, max = 5.5, step = 0.5),
        numericInput("hp", "Gross horsepower", 50,
                     min = 50, max = 340, step = 50),
        checkboxGroupInput("am", "Transmission (0=automatic, 1=manual)",
                           c("automatic" = 0,
                             "manual" = 1)),
        h5("After you select all predictors above, now submit values to check your MPG outcome"),
        submitButton("Submit"),
        dateInput("date", "Date:")
    ),
    mainPanel(
        h3("Results of MPG prediction"),
        h4("You entered weight"),
        verbatimTextOutput("inputWeight"),
        h4("You entered horsepower"),
        verbatimTextOutput("inputHP"),
        h4("You entered transmission"),
        verbatimTextOutput("inputAM"),
        h4("Your predictions on MPG"),
        verbatimTextOutput("predictionMPG"),
        h4("Date for this prediction"),
        verbatimTextOutput("odate"),
        h4("boxplot of automatic and manual transmission comparison"),
        plotOutput("newBoxplot")
    )
))


