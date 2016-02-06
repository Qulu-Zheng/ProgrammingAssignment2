This function is named "makeCacheMtrix"## Put comments here that give an overall description of what your
This function creates a special "matrix" object and  computes the inverse of the special "matrix".## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
a <- NULL
    set <- function(y) {
        x <<- y
        a <<- NULL
     }
     get <- function() x
     setinverse <- function() a <<- solve(x) 
     getinverse <- function() a
     list(set = set,
          get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         a <- x$getinverse()
     if(!is.null(a)) {
        message("Getting cached data")
        return(a)
     }
     data <- x$getinverse()
     a <- solve(data, ...)
     x$setinverse(a)
     a## Return a matrix that is the inverse of 'x'
}
