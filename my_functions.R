setup_libs = function(){ #read in my general use packages
  library(tidyverse)
  library(here)
  library(janitor)
  library(lubridate)
}

#stats_libs = function(){ #read in packages for a specific purpose (e.g. your stats toolkit)
#  library(tidybayes)
#  library(rethinking)
#  library(bayesplot)
#  library(brms)
#}

read_data = function(file){ #expedite your file loading! this saves a couple steps, though may be a bit silly
  require(tidyverse)
  require(here)
  require(janitor)
  
read_csv(here("data", file)) %>% 
    clean_names()
}

read_tree_data = function(file){
  require(tidyverse)
  require(here)
  require(janitor)
  
  read_csv(here("data", file)) %>% 
    clean_names() %>% 
    mutate() %>% 
    filter()
}



sim_plot = function(x_vector,  pred, prey){
  

  colors = rep(NaN, 2)
  
  for(i in 1:2){
    r.g.b = runif(1:3, min = 0, max = 1)
    colors[i] <- rgb(r.g.b[1], r.g.b[2],r.g.b[3])
    }
  
  
  plot(x_vector, pred, type = "l", lwd= "3", col = colors[1], xlab = "Time", ylab = "Population sizes", ylim = c(0, 1.4*max(prey)))
      lines(x_vector, prey, lwd = "3", col = colors[2])
      legend(x_vector[0.75*length(x_vector)], 1.4*max(prey), legend = c("Prey", "Predator"),col=c(colors[2], colors[1]), cex = 1, lty = 1, lwd = 3)
      
  
}

