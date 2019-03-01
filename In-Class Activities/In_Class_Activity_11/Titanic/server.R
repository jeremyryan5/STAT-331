library(shiny)
library(tidyverse)
library(datasets)

titanic = read_csv("https://www.dropbox.com/s/volbfu8onyvjcri/titanic.csv?dl=1")

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$farePlot <- renderPlot({
    
    # Render a barplot
    titanic %>%
      filter(Pclass == input$Pclass) %>%
      ggplot(aes(x = Fare, fill = Sex)) + geom_density(alpha = .5)
  })
}