
library(shiny)
library(ISLR)

shinyUI(
  
  pageWithSidebar(
    
    headerPanel("Predicting percentage returns from stocks"),
    
    sidebarPanel(
      
      numericInput('Lag1','Enter percentage returns 1 day before', 0.1 , min = -5, max = 5, step =.05),
      #submitButton('Submit'),
     
      numericInput('Lag2', 'Enter percentage returns 2 days before', 0.1 , min = -5, max = 5, step =.05),
     # submitButton('Submit'),
      numericInput('Lag3', 'Enter percentage returns 3 days before', 0.1 , min = -5, max = 5, step =.05),
     # submitButton('Submit'),
      numericInput('Lag4', 'Enter percentage returns 4 days before', 0.1 , min = -5, max = 5, step =.05),
     # submitButton('Submit'),
      numericInput('Lag5', 'Enter percentage returns 5 days before', 0.1 , min = -5, max = 5, step =.05),
      submitButton('Submit')
    ),
    
    mainPanel(
      h3('Results of the prediction'),
      p('This apps use  last five days percentage return records to predict today\'s stok returns
        using  linear regression model'),
     
      h4('Today\'s  percentage returns prediction from stocks is'),
      verbatimTextOutput("prediction"),
      
     h4('How to use this Apps??'),
     p('1.Enter values of last five day\'s return from stocks in five boxes'),
     p('2.Press the Submit button to get prediction'),
     p('3.Default value for each day\'s return is 0.1 '),
     p('4.You can increase or decrease the values for each last day by 0.05 between -5 to 5')
    )
  )
)
