library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Header title
  headerPanel("Module 9: Developing Data Products with Shiny App by taroAthirah"),
 
 
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    h3("Now make a choice of car make and its feature", style = "color:red"),
    
    br(),
    img(src="https://pixabay.com/static/uploads/photo/2013/07/13/11/29/car-158239_960_720.png", width="60%"),
    
   
    
    selectInput("make", "Choose a car make >>>>", 
                choices = c("Mazda", "Datsun", "Hornet","Valiant","Duster","Merc","Cadillac","Lincoln","Chrysler","Fiat","Honda","Toyota","Dodge","AMC","Camaro","Pontiac","Porsche","Lotus","Ford","Ferrari","Maserati","Volvo")),
    
    h3("Legend:-", style = "color:red"),
    p ("1.qsec = 1/4 mile time"),
    p ("2. mpg = Miles/(US) gallon"),
    p ("3. cyl = Number of cylinders") ,
    p ("4. disp = Displacement (cu.in.)"),
    p ("5. hp = Gross Horsepower") ,
    p ("6. drat = Rear axle ratio") ,
    p ("7. wt = Weight (lb/1000)"),
    p ("8. vs = V/S"),
    p ("9. am = Transmission (0 is automatic, 1 is manual)") ,
    p ("10. gear = Number of forward gears"),
    p ("11. carb = Number of carburetors"),
    
    selectInput("feature", "Choose a car feature >>>>", 
                choices = c("qsec","mpg", "cyl", "disp","hp","drat","wt","vs","am","gear","carb"))
    
   
  ),
  

  
  # Show a summary of the dataset and HTML table with the requested
  # number of observations
  
  mainPanel(
    list(tags$head(tags$style("body {background-color: #ADD8E6; }"))),
    p("This Project Assignment will give you some information on car models and your
            desired car's feature based on mtcars data available in"),
    img(src="http://web.warwick.ac.uk/statsdept/useR-2011/pics/logo_rstudio.jpg", length="50", width="30%"),
    
    br(),
    p(""),
    
    verbatimTextOutput("make"),
    
    verbatimTextOutput("feature"),
    
    verbatimTextOutput("tabletext"),
    
    tableOutput("view"),
    
    verbatimTextOutput("mean")
  )
))