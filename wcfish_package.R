### exploring chris free's west coast fisheries data package wcfish
#https://rdrr.io/github/cfree14/wcfish/man/

# Free CM, Vargas Poulsen C, Bellquist LF, Wassermann SN, Oken KL (2022) 
# The CALFISH database: a century of California’s non-confidential fisheries landings and participation data. Ecological Informatics 
# 69: 101599. https://doi.org/10.1016/j.ecoinf.2022.101599

https://chrismfree.com/wp-content/uploads/wcfish-vignette.html

install.packages("remotes")
remotes::install_github("cfree14/wcfish")
library(wcfish)
View(taxa)
View(blocks)
View(just)
View(cdfw_ports)
