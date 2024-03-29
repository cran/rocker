## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  db <- rocker::newDB() # New database handling object
#  #> dctr | New object
#  db$setupDriver( # Setup PostgreSQL database with stored password (password and user are hidden - default behavior)
#    RPostgres::Postgres(),
#    host = "127.0.0.1", port = "5432", dbname = "mydb",
#    user = "postgres", password = "password",
#    protect = c("password", "user")
#  )
#  #> Dctr | Driver load RPostgres

## ---- eval = FALSE------------------------------------------------------------
#  db$connect() # Open connection 1; Password is stored in the class and does not need to be provided.
#  #> DCtr | Database connected
#  output1 <- db$getQuery("SELECT * FROM mtcars;") # Get query 1
#  #> DCtR | Send query 21 characters
#  #> DCtR | Fetch rows all -> Received 32 rows, 11 columns, 4824 bytes
#  #> DCtR | Rows fetched 32
#  #> DCtR | Has completed yes
#  #> DCtr | Clear result
#  db$disconnect() # Close connection 1
#  #> Dctr | Database disconnected

## ---- eval = FALSE------------------------------------------------------------
#  db$connect() # Open connection 2; Password is stored in the class and does not need to be provided.
#  #> DCtr | Database connected
#  output2 <- db$getQuery("SELECT * FROM mtcars;") # Get query 2
#  #> DCtR | Send query 21 characters
#  #> DCtR | Fetch rows all -> Received 32 rows, 11 columns, 4824 bytes
#  #> DCtR | Rows fetched 32
#  #> DCtR | Has completed yes
#  #> DCtr | Clear result
#  db$disconnect() # Close connection 2
#  #> Dctr | Database disconnected

## ---- eval = FALSE------------------------------------------------------------
#  db$unloadDriver() # Reset database handling object
#  #> dctr | Driver unload RPostgres

## ---- eval = FALSE------------------------------------------------------------
#  db <- rocker::newDB() # New database handling object
#  #> dctr | New object
#  db$setupDriver( # Setup PostgreSQL database without stored password
#    RPostgres::Postgres(),
#    host = "127.0.0.1", port = "5432", dbname = "mydb",
#    user = "postgres"
#  )
#  #> Dctr | Driver load RPostgres

## ---- eval = FALSE------------------------------------------------------------
#  db$connect(password = "password") # Open connection 1; Password needs to be provided.
#  #> DCtr | Database connected
#  output1 <- db$getQuery("SELECT * FROM mtcars;") # Get query 1
#  #> DCtR | Send query 21 characters
#  #> DCtR | Fetch rows all -> Received 32 rows, 11 columns, 4824 bytes
#  #> DCtR | Rows fetched 32
#  #> DCtR | Has completed yes
#  #> DCtr | Clear result
#  db$disconnect() # Close connection 1
#  #> Dctr | Database disconnected

## ---- eval = FALSE------------------------------------------------------------
#  db$connect(password = "password") # Open connection 2; Password needs to be provided.
#  #> DCtr | Database connected
#  output2 <- db$getQuery("SELECT * FROM mtcars;") # Get query 2
#  #> DCtR | Send query 21 characters
#  #> DCtR | Fetch rows all -> Received 32 rows, 11 columns, 4824 bytes
#  #> DCtR | Rows fetched 32
#  #> DCtR | Has completed yes
#  #> DCtr | Clear result
#  db$disconnect() # Close connection 2
#  #> Dctr | Database disconnected

## ---- eval = FALSE------------------------------------------------------------
#  db$unloadDriver() # Reset database handling object
#  #> dctr | Driver unload RPostgres

