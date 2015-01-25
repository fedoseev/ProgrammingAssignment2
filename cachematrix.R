##  Class: "R Programming" at Coursera.com
##  Assignment 2 
##  The functions below are to illustrate the consept of caching using R scoping propertiessearch()




## makeCacheMatrix function 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
       x <<- y
       m <<- NULL
  }
get <- function()x
setInverse <-function()
}


## cacheSolve will return the inverse of the matrix object. 
## The special feature of this function is that it checks if there is alreay a value in the internal cache and the original matrix has not changed.
## If there is a value in the cache, the function will return the cached value. 
## If there is none, the fuction will compute the inverse, store its value and then return the computed value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
