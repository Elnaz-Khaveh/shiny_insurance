ui <- function(request){
  fluidPage(

    titlePanel("Correlation plots for Insurance dataset"),

    sidebarLayout(
      sidebarPanel(
        selectInput("factor_variable_selected", "Select the factor variable to plot:",
                    choices = c("sex", "smoker","region"),
                    multiple = FALSE,
                    selected = "region"),
        hr(),
        selectInput("numeric_variable_selected", "Select the numeric variable to plot:",
                    choices = c("age", "bmi"),
                    multiple = FALSE,
                    selected = "age"),
        hr(),
        actionButton(inputId = "render_plot",
                     label = "Click here to generate plot"),
        hr(),
        helpText("Original data from Kaggle"),
        hr(),
        bookmarkButton()),

      mainPanel(plotOutput("insurance_plot"))
        )
      )
}
