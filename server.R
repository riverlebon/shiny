library(shiny)
shinyServer(function(input, output) {
  #model <- reactive({
  #})
  
 output$plotGNP <- renderPlot({
      library("ggplot2")
      library("lucr")
      N=input$ncountries
      g=read.csv("GNP.csv",header=FALSE,skip=5,dec=".",stringsAsFactors=F)
      g=g[1:N,c(1,5,6)]
      names(g)=c("ccode","gnp","continent")
      g$gnp=from_currency(g$gnp)
      ggplot(g,aes(x=continent,y=gnp,fill=continent))+
           geom_boxplot(alpha=0.3)
  })
  
  
})
