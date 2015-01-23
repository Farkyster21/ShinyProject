library(shiny)


getgrade <- function(quiz1, quiz2, quiz3) ((.90 - .2*(quiz1/100 + quiz2/100 + quiz3/100))/.4)*100 


shinyServer(
  function(input,output){   
      output$inputValue <- renderPrint({c(paste(input$quiz1,"%",sep=""),paste(input$quiz2,"%",sep=""),paste(input$quiz3,"%",sep=""))})
      output$grade <- renderText({
        if(input$submitButton ==0){"Please Enter Your Grades First!"}
        else {
             if(getgrade(input$quiz1, input$quiz2, input$quiz3)>100) "Too Bad, Not Possible! :("
             else if(getgrade(input$quiz1, input$quiz2, input$quiz3)<0) "You're Amazing! You got it regardless!"
             else paste(getgrade(input$quiz1, input$quiz2, input$quiz3),"%",sep = "")    
        }
      })  
})