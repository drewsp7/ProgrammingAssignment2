## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I am making cache function that will create matrix and cache inverse  

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- Function(y) 
  {
    x <<- y
    inv <<- NULL
  }
  get function() x 
  setInverse <- function(solveMatrix) <<- solveMatrix
  getInverse <- function() inv
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## Computing the inverse of the special matrix from the makeCacheMatrix from above
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse() ##get the inverse of function x
  if(!is.NULL(inv)){      ##for non-null values, return the inverse
    return(inv)
  }
  data <- x$get()  #get the vector
  inv <- solve(data) #find the inverse
  x$setInverse(inv)
  inv
}
