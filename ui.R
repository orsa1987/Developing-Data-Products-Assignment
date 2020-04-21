if(!require(shiny)) install.packages("shiny", repos = "http://cran.us.r-project.org")
library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Horsepower from MPG and Cylinders"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
            sliderInput("sliderCyl", "How many Cylinders does the car have?", 4, 8, value = 6),
            h4("The first model is a simple model that predicts Horsepower based on MPG"),
            checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
            h4("The second model is a model that predicts Horsepower based on MPG, where MPG is set at zero for all MPGs less than 20 MPG"),
            checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
            h4("The third model is a model that predicts Horsepower based on MPG and Cylinders"),
            checkboxInput("showModel3", "Show/Hide Model 3", value = TRUE)
        ),
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted Horsepower from Model 1:"),
            textOutput("pred1"),
            h3("Predicted Horsepower from Model 2:"),
            textOutput("pred2"),
            h3("Predicted Horsepower from Model 3:"),
            textOutput("pred3")
        )
    )
))