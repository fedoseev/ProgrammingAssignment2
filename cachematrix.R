##  Class: "R Programming" at Coursera.com
##  Assignment 2 
##  The functions below are to illustrate the consept of caching using R scoping properties.




## makeCacheMatrix function 
## This function creates a matrix a list that contains the function to get and set the values of the matrix
## and get and set the values of its inverse
##
##   

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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
}
