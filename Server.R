library(UsingR)
#data(galton)
shinyServer(
  function(input, output) {
      output$gfrPlot <- renderPlot({
        age<-input$age
        Scr<-seq(0.75 ,3.2, length = 1000)
        GFR<-(175*(Scr)^-1.154)*((age)^-0.203)
        plot(Scr, GFR, type = "l", axes = TRUE, frame = FALSE, lwd = 3, xlab = "Serum CR", ylab = "eGFR")
    })
  }
)