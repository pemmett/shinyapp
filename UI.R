shinyUI(fluidPage(
  headerPanel("GFR plot"
              ),
  sidebarPanel(
    h4("Select the age using the slider, the application will graph Glomular Filtration Rate as a function of serum Creatinine"),
    p("This is an estimated value for non African American males"),
    p("This is only at estimate: it has a wide confidence interval and requires a trained nephrologist to interpret these numbers in context"),
    p("It is not to be used as a diagnosis of kidney function"),
    p("The formula is GFR<-(175*(Scr)^-1.154)*((age)^-0.203)"),
    sliderInput('age', 'Select Age',value = 21, min = 21, max = 80, step = 0.05,)
  ),
  mainPanel(
    plotOutput('gfrPlot')
  )
))
# s