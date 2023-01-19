server <- function(input, output,session) {

  factor_variable_selected <- eventReactive(input$render_plot, {
    input$factor_variable_selected
  })

  numeric_variable_selected <- eventReactive(input$render_plot, {
    input$numeric_variable_selected
  })
  plot_title <- eventReactive(input$render_plot, {
    paste(numeic_variable_selected(), "and", paste(factor_variable_selected()))})

  output$insurance_plot <- renderPlot({

    ggplot(data = ins_data) +
    ggplot(aes(x=sym(numeric_variable_selected()), y=charges, color=sym(factor_variable_selected()))) +
    geom_point(size=2)+
    theme(legend.position = "top")

  })

}

