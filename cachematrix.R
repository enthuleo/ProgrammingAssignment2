## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
 “makeCacheMatrix” Function is a special “matrix” object that can cache its inverse.it has four functions: get, set, setmean, getmean.
m<<-NUll begins set the mean to NULL for a future value.
first:get<- function()x, return the vector x in the main function.
second:set<-function(y){x<<-y m<<- NULL defines a function to set the vector, x, to a new vector,y, and resets the mean , m, to the NULL  in the main function.
third: setinverse <- function(solve) m <<- solve sets the inverse m,to solve.
fourth: getinverse<-function()m, returns the inverse.
fifth: list(set,get,setinverse,getinverse) returns the "makeCacheMatrix" vector, containing all of the function just defined.

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}       


## Write a short comment describing this function
Function “cacheSolve” computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), 
then the cachesolve should retrieve the inverse from the cache. If the inverse has not been calculated,
data gets the matrix stored in the  makeCacheMatrix.

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
       ## Return a matrix that is the inverse of 'x'

