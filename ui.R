library(shiny)

shinyUI(pageWithSidebar(
    #Get Your Stamp of Distinction!
  
    headerPanel("Let's Get That Certificate with Distinction!"),
    
    sidebarPanel(
        h3('Enter the Your Quiz Grades as a Percentage(%)'),
        numericInput('quiz1', 'Quiz 1 % Grade',0, min = 0, max = 100,step = 1),
        numericInput('quiz2', 'Quiz 2 % Grade',0, min = 0, max = 100,step = 1),
        numericInput('quiz3', 'Quiz 3 % Grade',0, min = 0, max = 100,step = 1),
        actionButton('submitButton',"Ready!")
    ),
    mainPanel(
        h3('Lowest Score Needed on Project to Graduate with Distinction'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4("Which means you need the following grade on the project to pass with distinction:"),
        verbatimTextOutput("grade")
        )
  )
)