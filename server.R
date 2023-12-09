shinyServer(
  function(input, output) {
    data <- reactive({iris[iris$Species == input$Species,]})
    output$irisplot <- renderPlot({
  
      #  Sepal Length plot
      plot_SepL <- ggplot(data(), aes(Sepal.Length)) +
        geom_histogram(bins=15, fill="pink", color = "black",alpha = .1) +
        geom_vline( aes(xintercept = mean(data()$Sepal.Length)), colour="blue", size=1, alpha=1) +
        labs(x = "Sepal Length", y = "Frequency", title = paste("Sepal Length, mean =", round(mean(data()$Sepal.Length),3),"cm")) +
        theme(panel.background = element_rect(fill='transparent'), plot.background = element_rect(fill='transparent', color=NA))
      
      # Sepal Width plot
      plot_SepW <- ggplot(data(), aes(Sepal.Width)) +
        geom_histogram(bins=15, fill="pink", color = "black",alpha = .1) +
        geom_vline( aes(xintercept = mean(data()$Sepal.Width)), colour="blue", size=1, alpha=1) +
        labs(x = "Sepal Width", y = "Frequency", title = paste("Sepal Width, mean =", round(mean(data()$Sepal.Width),3),"cm"))+
        theme(panel.background = element_rect(fill='transparent'), plot.background = element_rect(fill='transparent', color=NA))
      
      # Petal Length plot
      plot_PetL <- ggplot(data(), aes(Petal.Length)) +
        geom_histogram(bins=15, fill="green", color = "black",alpha = .1) +
        geom_vline( aes(xintercept = mean(data()$Petal.Length)), colour="blue", size=1, alpha=1) +
        labs(x = "Petal Length", y = "Frequency", title = paste("Petal Length, mean =", round(mean(data()$Petal.Length),3),"cm"))+
        theme(panel.background = element_rect(fill='transparent'), plot.background = element_rect(fill='transparent', color=NA))
      
      # Petal Width plot
      plot_PetW <- ggplot(data(), aes(Petal.Width)) +
        geom_histogram(bins=15, fill="green", color = "black",alpha = .1) +
        geom_vline( aes(xintercept = mean(data()$Petal.Width)), colour="blue", size=1, alpha=1) +
        labs(x = "Petal Width", y = "Frequency", title = paste("Petal Width, mean =", round(mean(data()$Petal.Width),3),"cm"))+
        theme(panel.background = element_rect(fill='transparent'), plot.background = element_rect(fill='transparent', color=NA))
      
      # Plotting 4 graphs together
      grid.arrange(plot_SepL,plot_SepW, plot_PetL, plot_PetW,nrow=4, ncol=1)
    })
  }
)





