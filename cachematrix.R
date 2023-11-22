## Put comments here that give an overall description of what your
## functions do

## Below are a pair of functions that cache the inverse of a matrix


## Write a short comment describing this function

## makeCacheMatrix: creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        set <- function(y) {     ## set takes the argument y and assigns it to matrix x
                x <<- y         ## creates x which is retrieved by get()        
                inv <<- NULL    ## initial inverse is NULL
        }
        get <- function() x
        setInverse <- function() inv <<- solve(x) ## calculates the inverse
        getInverse <- function() inv
        list(set = set, 
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

##cacheSolve: computes the inverse of the matrix object returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()        
        if (!is.null(inv)) {            ## checks if inverse exists and is not NULL
                message("getting cached data")
                return(inv)             ## returns the inversion
        }
        data <- x$get()         ## if inverse does not exist...
        inv <- solve(mat, ...)  ## solves for the inverse
        x$setInverse(inv)       ## sets the inverse of the cache via setInverse
        inv
}

