# This r script is to show how to query a database and work in R and GitHub
# Y.M.
# 2015-01-06

# Install and load a new package
install.packages("RSQLite",dependencies=T)  # Don't need to run this line if already installed
library(RSQLite)

driver <- dbDriver("SQLite")
con <- dbConnect(driver, dbname="portal_mammals.sqlite")

results <- dbGetQuery(con, "SELECT species,wgt,year FROM surveys")
dbDisconnect(con)

# Plot results
plot(results$year, results$wgt)

