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
                numericInput('id3', 'Enter second number',0,min=0, max=10000, step=0.5)
                ),
#
#
#The main panel will show the input, operator, and result
#
#
        mainPanel
                (h3("Showing your work"),
                 h4('This first number'),
                 verbatimTextOutput("oid1"),
                 verbatimTextOutput("oid2"),
                 h4('This second number'),
                 verbatimTextOutput('oid3'),
                 h4('EQUALS'),
                 verbatimTextOutput('oid4')
                )
        ))
