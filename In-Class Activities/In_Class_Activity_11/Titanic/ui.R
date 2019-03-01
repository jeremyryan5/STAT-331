library(tidyverse)
library(shiny)

titanic = read_csv("https://www.dropbox.com/s/volbfu8onyvjcri/titanic.csv?dl=1")

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Titanic Fare by Gender and Passenger Class"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("Pclass", "Class:", 
                  choices= sort(unique(titanic$Pclass))),
      hr(),
      helpText("Data from Titanic passenger lists")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("farePlot")  
    )
    
  )
)