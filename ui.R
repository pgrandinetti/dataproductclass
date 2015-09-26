library(shiny)
shinyUI(fluidPage(
  titlePanel("Hello, there!"),
  sidebarPanel(
    h1('My github account is quite empty!'),
    h2('But this is why I discover git since a few time!'),
    h3('Do you think I should upload all of my existing projects on github?'),
    checkboxGroupInput("id2", "You may select more than one...",
                       c("Yes" = 1,
                         "No" = 2,
                         "Maybe" = 3,
                         "What are you waiting?" = 4)),
    actionButton('action','Share!'),
    width = 8
  ),
  mainPanel(
    h3("Here is your opinions!"),
    plotOutput('bar'),
    width = 4
  )
))