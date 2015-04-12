library (shiny)
shinyServer(
    function(input,output){
            output$oid1 <- renderPrint({input$id1})
            output$oid2 <- renderPrint({input$id2})
            output$oid3 <- renderPrint({input$id3})
#
#  Lets perform some calculations on the input based on an input variable
#  Check the input value (id2) to see what operation to perform
#   And perform that calculation on input value 1 (id1) & 3 (id3)
#   Before returning the result to output id4
#
            output$oid4 <- reactive ({
                    if(input$id2== 'Plus')
                    {input$id1 + input$id3}
                    else if(input$id2 == "Minus")
                    {input$id1 - input$id3}
                      else if(input$id2 == "Times")
                      {input$id1 * input$id3}
                        else if(input$id2 == "Divided by")
                        {input$id1 / input$id3}
                                else if(input$id2 == "To The Power Of")
                                {input$id1 ^ input$id3}
                    
                     })
            
        }
        )