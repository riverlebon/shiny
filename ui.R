library(shiny)
shinyUI(fluidPage(
  titlePanel("GNP by Continent"),
  sidebarLayout(
    sidebarPanel(
      h1("Number of Countries"),
      print("Please enter the number of countries with the highest Gross National Product as of  2012."),
      sliderInput("ncountries", "Countries", 3, 50, 3)
    ),
    mainPanel(
      plotOutput("plotGNP")
    )
  )
))
