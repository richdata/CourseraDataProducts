library (shiny)
shinyUI(pageWithSidebar(
        headerPanel("Simply Calculating"),
#
# Side Panel has 3 widget inputs:
# 1) 2 Numeric inputs
# 2) 1 Radio Button input
#
        sidebarPanel(
                numericInput('id1', 'Enter first number',0,min=0, max=10000, step=0.5),
                radioButtons("id2", "Operation",
                                   c("+" = "Plus",
                                     "-" = "Minus",
                                     "*" = "Times", 
                                     "/" = "Divided by",
                                     "^" = "To The Power Of"), inline = TRUE),
                numericInput('id3', 'Enter second number',0,min=0, max=10000, step=0.5),
 #
 #
 #
                h4("Explanatory text"),

 
                p("This is simple calculator app.  As you enter two numbers and
                  pick an operation, the app performs the calculation in real time",
                  style = "font-family: 'baskerville'; font-si16pt"), 
 
                 p("Using this app - You enter a number in the first edit box, 
                   select the operation you would like to perform with the radio buttons
                   and enter the second number of your calculation.  As you make each
                  entry, the app will update the calculation to the right.",
                 style = "font-family: 'baskerville'; font-si16pt"),
			
		p("People who might be interested in seeing how I did this
                  can review the code here:", 
			  style = "font-family: 'baskerville'; font-si16pt"),
			
			a(href = "https://github.com/richdata/CourseraDataProducts",
			  "Link to source code on GitHub")
                
                ),
#
#
#The main panel will show the input, operator, and result
#
#
        mainPanel
                (h3("Showing your work"),
                 h4('This first number,'),
                 verbatimTextOutput("oid1"),
                 verbatimTextOutput("oid2"),
                 h4('This second number,'),
                 verbatimTextOutput('oid3'),
                 h4('EQUALS'),
                 verbatimTextOutput('oid4')
                )
        ))
