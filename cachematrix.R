## This functions are created to cache the inverse of a matrix and elimininate
## the need for repeated computations

## Creating an element of a matrix to Cache its inverse

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL
set <- function(y) {

	x <<- y
	inv <<- NULL
}

	get <- function() x

	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function()inv

	list(set = set, get = get, 
	    
	setinverse = setinverse, getinverse = getinverse)
 
}


## Computing the inverse of the matrix returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()

	if(!is.null(inv) {
	
	message("getting cached data")

	return(inv)
}
	data <- x$get()
	inv <- solve(data, ...)

	x$setinverse(inv)
	
	inv
}
