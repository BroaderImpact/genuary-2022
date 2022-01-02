# Load packages
library(tidyverse)
library(viridis)
library(ggdark)

# simple parametric equation using cosine + sine to make unit circle
circleFun <- function(center = c(0, 0), diameter = 1, npoints = 100){
    r = diameter / 2
    tt <- seq(0,2*pi,length.out = npoints)
    xx <- center[1] + r * cos(tt)
    yy <- center[2] + r * sin(tt)
    return(data.frame(x = xx, y = yy))
}

dat <- 
  circleFun(c(1, -1), 2.3, npoints = 100)

ggplot(dat,aes(x, y)) +
  geom_path()