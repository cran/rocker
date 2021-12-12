## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("rocker")

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("nikolaus77/rocker")

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object

## -----------------------------------------------------------------------------
db <- rocker::rocker$new() # New database handling object

## -----------------------------------------------------------------------------
db <- rocker::newDB(verbose = TRUE) # New database handling object
db$setupPostgreSQL()
db$unloadDriver()

## -----------------------------------------------------------------------------
db$verbose <- FALSE # Terminal output off
db$setupPostgreSQL()
db$unloadDriver()

## -----------------------------------------------------------------------------
db$verbose <- TRUE # Terminal output on (default)
db$setupPostgreSQL()
db$unloadDriver()

## -----------------------------------------------------------------------------
db1 <- rocker::newDB(id = "myDB 1") # New database handling object with ID
db2 <- rocker::newDB(id = "myDB 2") # New database handling object with ID
db1$setupPostgreSQL()
db2$setupMariaDB()
db1$unloadDriver()
db2$unloadDriver()

## -----------------------------------------------------------------------------
db1$id <- NULL # Remove ID
db1$setupSQLite()
db1$unloadDriver()

## -----------------------------------------------------------------------------
db1$id <- "newID 1" # Add new ID
db1$setupSQLite()
db1$unloadDriver()

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object
db$setupPostgreSQL()
db$info

## -----------------------------------------------------------------------------
db

## -----------------------------------------------------------------------------
db$print()

## -----------------------------------------------------------------------------
print(db)

## -----------------------------------------------------------------------------
db$unloadDriver()

## ---- eval = FALSE------------------------------------------------------------
#  help(rocker)

