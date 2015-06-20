library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Body BMI Calculation"),
  sidebarPanel(
        h3("Inputs"),
        p("You can input your weight and height in appropriate units to calculate the body BMI value."),
        p("The app also lets you know which range your BMI value is in out of the 4 categories of underweight, normal, overweight and obese."),
        numericInput('wt','Weight (kg)', 0),
        numericInput('ht','Height (cm)',1)
  ),
  mainPanel(
        h3("Body BMI"),
        p("Your weight is (kg)"),
        verbatimTextOutput("owt"),
        p("Your height is (cm)"),
        verbatimTextOutput("oht"),
        p("Your body BMI is"),
        verbatimTextOutput("bmi"),
        p("You are"),
        verbatimTextOutput("outcatbmi")
  )
))