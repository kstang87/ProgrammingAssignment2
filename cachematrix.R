## Two functions that cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
## Initialize the inverse property
i <- NULL

## Set matrix
set <- function(matrix) {
        m <<- matrix
        i <<- NULL
}

## Get matrix
get <- function() {

##Return matrix
m
}

## Set inverse of matrix
setInverse <- function(inverse) {
i <<- inverse
}

## Get inverse of matrix
getInverse <- function() {

## Return inverse property
i
}

## Return a list of the methods
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getInverse()

## Just return the inverse if its already set
if( !is.null(m) ) {
message("getting cached data")
return(m)
}

## Get matrix from object
data <- x$get()

## Calculate inverse using matrix multiplication
m <- solve(data) %*% data

## Set inverse to object
x$setInverse(m)

## Return  matrix
m

}
