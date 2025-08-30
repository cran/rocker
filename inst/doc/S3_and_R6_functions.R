## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(rocker)
db <- newDB()
setupDriver(db, drv = RSQLite::SQLite(), dbname = ":memory:")
connect(db)
writeTable(db, "mtcars", mtcars)
sendQuery(db, "SELECT * FROM mtcars;")
output <- fetch(db)
clearResult(db)
disconnect(db)
unloadDriver(db)

## -----------------------------------------------------------------------------
db <- rocker::newDB()
db$setupDriver(drv = RSQLite::SQLite(), dbname = ":memory:")
db$connect()
db$writeTable("mtcars", mtcars)
db$sendQuery("SELECT * FROM mtcars;")
output <- db$fetch()
db$clearResult()
db$disconnect()
db$unloadDriver()

