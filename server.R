library(shiny)
library(ggplot2)
shinyServer(
  function(input, output) {
    
    
    output$plot1<-renderPlot({
      mns = NULL
      mean=NULL
      var=NULL
      #extract input values
      lambda <- input$lambda
      n  <- input$n
      sim_num    <- input$sim_num
      set.seed(500)
      
      #create exponendtial distribution with sample size of n
      #and simulate for sim_num times
       for (i in 1 : sim_num) {
         value=rexp(n,lambda)
         mns = c(mns, mean(value))
         
       }
       
       for (i in 1 : sim_num) {
         mean = c(mean, mean(mns[1:i]))
         var= c(var,var(mns[1:i]))
       }
      
      
      par(mfrow = c(2,2))
      #plot mean
      plot(mean,xlab="simulation number",ylab="sample",col="black",main="simulation mean vs theoratical mean")
      abline(h = mean[sim_num] , col = "red", lwd = 3, lty = 2)
      legend('topright', c("Theoratical Mean=1/lambda"), 
             lty=1, col=c('red'), bty='n', cex=1.2)
      
      #plot variance
      plot(var,xlab="simulation number",ylab="sample",main="simulation variance vs theoratical variance")
      abline(h = var[sim_num] , col = "steelblue", lwd = 3, lty = 2)
      legend('topright', c("Theoratical Variance=(1/lambda)^2"), 
             lty=1, col=c('red'), bty='n', cex=1.2)
      
      #plot histogram distribution
      hist(mns , freq = FALSE, xlim = c(2, 8), 
           main = paste("Histogram of", sim_num, "simulations"), xlab = "Values",breaks=sim_num/5)
      x <- seq(min(mns), max(mns), length = sim_num) 
      curve(dnorm(x, mean = mean(mns), sd = sd(mns)), 
            col = "red", lwd = 3, lty = 3, add = TRUE)
      legend('topright', c("Normal distribution"), 
             lty=1, col=c('red'), bty='n', cex=1.2)
      
            })
    
    
    
  })
