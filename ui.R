# loading the required packages 
library(shiny) 
library(ggplot2) 
library(gridExtra) 

shinyUI(pageWithSidebar(
  headerPanel(
    list(tags$head(tags$style("body {background-color:purple; color:black;}")),
         HTML('<b style="color:white ;font-size:25px;text-align:center; padding:25px"> Length and Width of the Petal and Sepal of each Iris Species </b>' ))
  ),
  sidebarPanel(
    selectInput('Species', 'Select Species', as.character(unique(iris$Species)))
  ),
  mainPanel(
    
    plotOutput('irisplot',width = 550, height = 700),


  tags$footer(
    "For source code visit ",
    tags$a(
      "https://www.github.com/Pradnyab23/Iris_project",
      target = "_blank",
      href = "https://www.github.com/Pradnyab23/Iris_project"
    ),
    style = " width: 80%; color: white; text-align: center; bottom:500;height: 100px;"
  )
)))


