## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y = matrix()){
    mat <<- y
    inv <<- NULL
  }
  get <- function() mat
  getInverse <- function() inv
  setInverse <- function(inverse = matrix()) inv <<- inverse
  list(set = set,
       get = get,
       getInverse = getInverse,
       setInverse = setInverse
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
