## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object
db$setupSQLite(dbname = tempfile()) # Setup SQLite database
db$connect() # Open connection
db$writeTable("mtcars", mtcars) # Create table for testing
db$disconnect() # Close connection

## -----------------------------------------------------------------------------
output <- db$getQuery("SELECT * FROM mtcars;") # Get query

## -----------------------------------------------------------------------------
db$connect() # Open connection
output1 <- db$getQuery("SELECT * FROM mtcars;") # Get query 1
output2 <- db$getQuery("SELECT * FROM mtcars;", 15) # Get query 2
db$disconnect() # Close connection

## -----------------------------------------------------------------------------
db$connect() # Open connection
db$sendQuery("SELECT * FROM mtcars;") # Send query
output <- db$fetch() # Fetch result
db$clearResult() # Clean up result
db$disconnect() # Close connection

## -----------------------------------------------------------------------------
db$unloadDriver() # Reset database handling object

