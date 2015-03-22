library(shiny)

# Define UI for application that draws a plot
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Law of large numbers simulation"),
  
  # Sidebar with slider input for lambda, sample size and simulation times
  sidebarPanel(
      
      
      p("This applet take sample size exponential distribution and  create the mean and variance over multiple simulations to compared with theoratical values. Histogram of the mean of the samples are also display to show that as the simulation times increase the distribution of the sample mean approach normal distribution."),
      
      sliderInput("lambda",
                  "Lambda:",
                  min = 0.1,
                  max = 1,
                  value = 0.2),
      
      sliderInput("n",
                  "Sample Size:",
                  min = 40,
                  max = 1000,
                  value = 100),
      
      sliderInput("sim_num",
                  "simulation size:",
                  min = 5,
                  max = 1000,
                  value = 100)
          
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput('plot1')
       
    )
  
))