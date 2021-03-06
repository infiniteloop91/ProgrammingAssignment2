## Put comments here that give an overall description of what your
## functions do

### Vector Part I

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    
    
    x <<- y
    inv <<- NULL
  }
  
  
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


#### Cache Solve Part II

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv

        ## Return a matrix that is the inverse of 'x'
}
#### I hope this worked
