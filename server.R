
library(shiny)
library(ISLR)
data(Smarket)
suppressPackageStartupMessages(library(googleVis))
fit<-lm(Today~Lag1+Lag2+Lag3+Lag4+Lag5,data = Smarket)
shinyServer(
  function(input, output) {
    output$Lag1 <- renderPrint({input$Lag1})
    output$Lag2 <- renderPrint({input$Lag2})
    output$Lag3 <- renderPrint({input$Lag3})
    output$Lag4 <- renderPrint({input$Lag4})
    output$Lag5 <- renderPrint({input$Lag5})
    
    newdata <- reactive(data.frame(Lag1 = input$Lag1,Lag2 = input$Lag2, 
                        Lag3  = input$Lag3,Lag4 = input$Lag4,
                        Lag5  = input$Lag5))
    
    output$prediction <- renderText({predict(fit,newdata = newdata())})
  }
)






