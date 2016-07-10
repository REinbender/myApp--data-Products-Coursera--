# step 1 create a ui.R file

#library (shiny)

#shinyUI(pageWithSidebar(
  # Application title
#  headerPanel("Diabetes Prediction"),
#  sidebarPanel(
#    numericInput('glucose', 'Glucose ml/dl', 90, min = 50, max=200, step = .5),
#    submitButton('Submit'),
#    h3('Chooes Wisely!')
#  ),
#  mainPanel(
#    h3('Results of prediction'),
#    h4('You entered'),
#    verbatimTextOutput("inputValue"),
#    h4('Which resulted in a prediction of'),
#    verbatimTextOutput("prediction")
#    )
#  )
#)

 # Coursera - Developing Data Products- Course Project 

 # ui.R file for the shiny app 
 # This app was developed to help people choose the best car for their trip, using mtcars dataset, from [R]  

 library(markdown) 
 

 shinyUI(navbarPage("Select the best car for your trip", 
                              tabPanel("Table", 
                                                              
                                    # Sidebar 
                                        sidebarLayout( 
                                            sidebarPanel( 
                                                    helpText("Input information about your idea travel situation"), 
                                                    numericInput('dis', 'Distance (miles):', 25, min = 1, max = 1000), 
                                                    numericInput('cost', 'Gas Price per gallon:', 2.25, min = 2, max = 5, step=0.01), 
                                                    numericInput('gas', 'gasoline Budget (Max):', 20, min=1, max=1000), 
                                                    checkboxGroupInput('cyl', 'Number of cylinders (V4, V6, V8):', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)), 
                                                    sliderInput('disp', 'Displacement (Power)', min=50, max=500, value=c(70,480), step=10), 
                                                    sliderInput('hp', 'Total horsepower', min=50, max=400, value=c(50,340), step=10), 
                                                    checkboxGroupInput('am', 'Transmission Type (A/M):', c("Automatic"=0, "Manual"=1), selected = c(0,1)) 
                                                          ), 
                                                        mainPanel( 
                                                             dataTableOutput('table') 
                                                          )  ) ), 
                              tabPanel("About", 
                                  mainPanel( 
                                  includeMarkdown("about.md") 
                                                        ))))    
