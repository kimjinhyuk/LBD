library(shiny)
install.packages("shinythemes")
library(shinythemes)

fluidPage(theme = shinytheme("superhero"),
  #Application title
  titlePanel(em("hello Word Cloud"),windowTitle = "Word Cloud"),
  
  sidebarLayout(
    #Sidebar with a slider and selection inputs
    sidebarPanel(
      selectInput(inputId = "in_selection", label = "Choose a book :", choices = books),
      actionButton(inputId = "in_update",label =  "Change", icon(name="fas fa-robot")),
      hr(),
      sliderInput(inputId = "in_freq", label = "Minimum Frequency:", min=1, max=50, value=15, animate = TRUE),
      sliderInput(inputId = "in_max", label = "Maximum Number of Words:", min=1, max=300, value=100, animate = TRUE)
    ),
    #Show word Cloud
    mainPanel(
      plotOutput(outputId = "out_plot"),
      hr()
    )
  )
)
