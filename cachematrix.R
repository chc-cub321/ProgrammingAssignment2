## Put comments here that give an overall description of what your
## functions  do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Grabbed some code from the writeup, for cachemean function. Need to modify it
## in order to solve the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m

}
