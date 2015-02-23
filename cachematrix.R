## Put comments here that give an overall description of what your
## functions  do

## Adjusted the names and changed the function 
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
             setinverse = setinverse ,
             getinverse = getinverse )
}


## Grabbed some code from the writeup, from cachemean function. Need to modify it
## in order to solve the matrix
cacheSolve <- function(x, ...) {
        ## Retrieve inverse of X if it has already been computed
	  m <- x$getinverse ()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m

}
