##  Class: "R Programming" at Coursera.com
##  Assignment 2 
##  The functions below are to illustrate the consept of caching using R scoping properties.

##  Testing  scenario:
##x = rbind(c(4, 7), c(2, 6)) 
##y = makeCacheMatrix(x)
##  Run cacheSolve(y). This is an initial run, so the return value of a function must be computed first
##cacheSolve(y)
##  The second run. This time the value is extracted from the cache
#cacheSolve(y)


##   [,1] [,2]
##  [1,]  0.6 -0.7
##  [2,] -0.2  0.4


## makeCacheMatrix function 
## This function creates a matrix a list that contains the function: 
## 1.To get and set the values of the matrix
## 2. To get and set the values of the matrix inverse


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL # assigning initial value
  ## Set a matrix
  set <- function(y){
       x <<- y      #  "<<-" tells R to use the parent of the current environment
       m <<- NULL
  }
get <- function() {
      x
  }
setinverse <-function(inverse) m <<- inverse
getinverse <-function()m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## cacheSolve will return the inverse of the matrix object. 
## The special feature of this function is that it checks if there is alreay a value in the internal cache and the original matrix has not changed.
## If there is a value in the cache, the function will return the cached value. 
## If there is none, the fuction will compute the inverse, store its value and then return the computed value.


## The Inverse of a Matrix is the same idea as the reciprocal of a number:

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("Getting cached data...")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}
