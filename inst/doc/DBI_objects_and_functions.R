## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
db <- rocker::newDB() # New database handling object
db$.drv # Empty driver
db$.con # Empty connection
db$.res # Empty result

## -----------------------------------------------------------------------------
db$setupSQLite() # Setup SQLite database
db$.drv # 'DBI' DBIDriver-class

## -----------------------------------------------------------------------------
db$getInfoDrv() # 'rocker' class function

## -----------------------------------------------------------------------------
DBI::dbGetInfo(db$.drv) # Direct usage of 'DBI' function on 'rocker' class

## -----------------------------------------------------------------------------
RSQLite::dbGetInfo(db$.drv) # Direct usage of driver package, 'RSQLite', function on 'rocker' class

## -----------------------------------------------------------------------------
db$connect() # Open connection
db$.con # 'DBI' DBIConnection-class

## -----------------------------------------------------------------------------
db$getInfoCon() # 'rocker' class function

## -----------------------------------------------------------------------------
DBI::dbGetInfo(db$.con) # Direct usage of 'DBI' function on 'rocker' class

## -----------------------------------------------------------------------------
RSQLite::dbGetInfo(db$.con) # Direct usage of driver package, 'RSQLite', function on 'rocker' class

## -----------------------------------------------------------------------------
db$writeTable("mtcars", mtcars) # Create table for testing

## -----------------------------------------------------------------------------
db$sendQuery("SELECT * FROM mtcars;") # Send query
db$.res # 'DBI' DBIResult-class

## -----------------------------------------------------------------------------
db$getInfoRes() # 'rocker' class function

## -----------------------------------------------------------------------------
DBI::dbGetInfo(db$.res) # Direct usage of 'DBI' function on 'rocker' class

## -----------------------------------------------------------------------------
RSQLite::dbGetInfo(db$.res) # Direct usage of driver package, 'RSQLite', function on 'rocker' class

## -----------------------------------------------------------------------------
db$clearResult() # Clean up result
db$.res # Empty result
db$disconnect() # Close connection
db$.con # Empty connection
db$unloadDriver() # Reset database handling object
db$.drv # Empty driver

## -----------------------------------------------------------------------------
drv <- RSQLite::SQLite() # SQLite driver
DBI::dbCanConnect( # Test parameter
  drv = drv,
  dbname = ":memory:"
)
con <- DBI::dbConnect( # Open connection
  drv = drv,
  dbname = ":memory:"
)
DBI::dbWriteTable(con, "mtcars", mtcars) # Create table for testing
res <- DBI::dbSendQuery(con, "SELECT * FROM mtcars;") # Send query
output <- DBI::dbFetch(res) # Fetch result
DBI::dbClearResult(res) # Clean up result
DBI::dbDisconnect(con) # Close connection
DBI::dbUnloadDriver(drv) # Unload driver

## -----------------------------------------------------------------------------
db <- rocker::newDB(verbose = FALSE) # New database handling object
db$setupDriver( # Setup SQLite database
  drv = RSQLite::SQLite(),
  dbname = ":memory:"
)
db$canConnect() # Test parameter
db$connect() # Open connection
db$writeTable("mtcars", mtcars) # Create table for testing
db$sendQuery("SELECT * FROM mtcars;") # Send query
output <- db$fetch() # Fetch result
db$clearResult() # Clean up result
db$disconnect() # Close connection
db$unloadDriver() # Reset database handling object

