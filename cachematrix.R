## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    set <- function(y){
        x <<- y
        inverseMatrix <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inverseMatix <<- inverse
    getInverse <- function() inverseMatrix
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## Check to see if inverse has already been calculated. If so, it gets
## inverse from the cache and skips the computation. Otherwise, it
## calculates the inverse of the data and set the inverse in the cache
cacheSolve <- function(x, ...) {
    inverseMatrix <- x$getInverse()
    if(!is.null(inverseMatrix)){
        message("getting cached data")
        return (inverseMatrix)
    }
    data <- x$get()
    inverseMatrix <- solve(data,...)
    x$setInverse(inverseMatrix)
    inverseMatrix
}
