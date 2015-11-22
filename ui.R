shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI)"),
    sidebarPanel(
      numericInput('weight', 'Weight (Pound)', 160, min = 80, max = 400, step = 5),
      numericInput('height', 'Height (inch)', 70, min = 50, max = 90, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('The Weight You Entered Was'),
      verbatimTextOutput("oid1"),
      h4('The Height You Entered Was'),
      verbatimTextOutput("oid2"),
      h4('Which resulted in a BMI of '),
      verbatimTextOutput("prediction")
    )
  )
)