library(shiny)

bmi <- function(wt,ht) wt/(ht/100)^2
catbmi <- function(wt,ht) {
        bmi <- wt/(ht/100)^2
        if (bmi >= 30) catbmi <- "obese"
        else if (bmi < 30 & bmi >= 25 ) catbmi <- "overweight"
        else if (bmi < 25 & bmi >= 18.5) catbmi <- "normal"
        else catbmi <- "underweight"
}

shinyServer(
        function(input,output){
                output$owt <- renderText({input$wt})
                output$oht <- renderText({input$ht})
                output$bmi <- renderText(bmi(input$wt,input$ht))
                output$outcatbmi <- renderText(catbmi(input$wt,input$ht))
        }
)