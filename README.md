##  Class: "R Programming" at Coursera.com
##  Assignment 2 
  The functions below are to illustrate the consept of caching using R scoping properties.

  Testing  scenario:
x = rbind(c(4, 7), c(2, 6)) 
y = makeCacheMatrix(x)
 Run cacheSolve(y). This is an initial run, so the return value of a function must be computed first
cacheSolve(y)
  The second run. This time the value is extracted from the cache
cacheSolve(y)

   [,1] [,2]
  [1,]  0.6 -0.7
  [2,] -0.2  0.4