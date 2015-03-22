Law of large Number Simulation with expontial distribution
========================================================
author: superpapper
date: 03/21/2015

Law of large Number
========================================================

In probability theory, the law of large numbers (LLN) is a theorem that describes the result of performing the same experiment a large number of times. In this project, we are trying to simulate the effect by plotting a sample of exponentially distributions.
You are going to see in the App as the simulation size increases:
- simulation mean approach theoratical mean
- simulation variance approach theoratical variance
- distribution of sample mean approach normal distribution 

You could also see how the exponential distribution mean and variance changes as the lambda changes.

The App
========================================================

!["app"](App.jpg) 
You could change input through three slider on the left and 
the exponential distribution's mean, varianceff and sample mean distribution will automatically refresh on the right.

Simulation Code
========================================================
The code in the server.R take in the lamba, smaple size and simulation number from the slider. Following is an example of exponential distribution with lambda=0.2, which has theoractical mean of 1/0.2= 5. We could see from the mean data the value is approaching 5 as the array index increase.


```r
head(mean,25)
```

```
 [1] 4.514222 4.782505 4.272409 4.183531 4.326426 4.218236 4.479612
 [8] 4.568851 4.610282 4.619004 4.722844 4.715710 4.720196 4.668459
[15] 4.606933 4.695161 4.739987 4.804154 4.778601 4.860466 4.889981
[22] 4.918072 4.955678 4.958377 5.015616
```




About
========================================================

This app was developed for coursera class "Developing Data Products".

It is an extension of the first project of coursera class "Statistical Inteference"

It is written in R and you could get the source files in https://github.com/superpapper/Developing-Data-Products  
The App is hosted in https://superpapper.shinyapps.io/Project/
