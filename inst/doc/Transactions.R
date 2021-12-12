## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object
db$setupSQLite() # Setup SQLite database
db$connect() # Open connection
db$writeTable("mtcars", mtcars) # Create table for testing
output <- db$getQuery("SELECT * FROM mtcars;") # Get query -> 32 rows
db$transaction # Transaction indicator

## -----------------------------------------------------------------------------
db$begin() # Start transaction 1
db$transaction # Transaction indicator
AFFECTED <- db$execute("DELETE FROM mtcars WHERE gear = 3;") # Modify table -> 15 rows
db$commit() # Commit transaction 1
db$transaction # Transaction indicator
output <- db$getQuery("SELECT * FROM mtcars;") # Get query -> 17 rows

## -----------------------------------------------------------------------------
db$begin() # Start transaction 2
db$transaction # Transaction indicator
AFFECTED <- db$execute("DELETE FROM mtcars WHERE gear = 5;") # Modify table -> 5 rows
output <- db$getQuery("SELECT * FROM mtcars;") # Get query -> 12 rows
db$rollback() # Rollback transaction 2
db$transaction # Transaction indicator
output <- db$getQuery("SELECT * FROM mtcars;") # Get query -> 17 rows

## -----------------------------------------------------------------------------
db$disconnect() # Close connection
db$unloadDriver() # Reset database handling object

