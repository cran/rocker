## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
# install.packages("RSQLite")

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object
db$setupSQLite( # Setup SQLite database
  dbname = ":memory:"
)
db$unloadDriver() # Reset database handling object

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object
db$setupDriver( # Setup SQLite database
  drv = RSQLite::SQLite(),
  dbname = ":memory:"
)
db$unloadDriver() # Reset database handling object

## ----eval = FALSE-------------------------------------------------------------
# install.packages("RPostgres")

## ----eval = FALSE-------------------------------------------------------------
# db <- rocker::newDB() # New database handling object
# #> dctr | New object
# db$setupPostgreSQL( # Setup PostgreSQL database
#   host = "127.0.0.1", port = "5432", dbname = "mydb",
#   user = "postgres", password = "password"
# )
# #> Dctr | Driver load RPostgres
# db$unloadDriver() # Reset database handling object
# #> dctr | Driver unload RPostgres

## ----eval = FALSE-------------------------------------------------------------
# db <- rocker::newDB() # New database handling object
# #> dctr | New object
# db$setupDriver( # Setup PostgreSQL database
#   drv = RPostgres::Postgres(),
#   host = "127.0.0.1", port = "5432", dbname = "mydb",
#   user = "postgres", password = "password"
# )
# #> Dctr | Driver load RPostgres
# db$unloadDriver() # Reset database handling object
# #> dctr | Driver unload RPostgres

## ----eval = FALSE-------------------------------------------------------------
# install.packages("RMariaDB")

## ----eval = FALSE-------------------------------------------------------------
# db <- rocker::newDB() # New database handling object
# #> dctr | New object
# db$setupMariaDB( # Setup MariaDB database
#   host = "127.0.0.1", port = "3306", dbname = "mydb",
#   user = "root", password = "password"
# )
# #> Dctr | Driver load RMariaDB
# db$unloadDriver() # Reset database handling object
# #> dctr | Driver unload RMariaDB

## ----eval = FALSE-------------------------------------------------------------
# db <- rocker::newDB() # New database handling object
# #> dctr | New object
# db$setupDriver( # Setup MariaDB database
#   drv = RMariaDB::MariaDB(),
#   host = "127.0.0.1", port = "3306", dbname = "mydb",
#   user = "root", password = "password"
# )
# #> Dctr | Driver load RMariaDB
# db$unloadDriver() # Reset database handling object
# #> dctr | Driver unload RMariaDB

## ----eval = FALSE-------------------------------------------------------------
# install.packages("crayon")

