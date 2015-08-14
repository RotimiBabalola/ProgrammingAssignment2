## Put comments here that give an overall description of what your
## functions do
## These two functions speed up the computation of the inverse of a matrix which is usually an expensive 
## computation for large matrices

## This first function creates a list of four functions which set and get the values of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
		  inv <- NULL
		  set <- function(y) {
                    x <<- y #substitutes the matrix x with y (the input) in the main function (makeCacheMatrix)
                    inv <<- NULL #set inv (the inverse) to NULL
            }
			get <- function() x
            setInverse <- function(inverse) m <<- inverse
            getInverse <- function() m
            list(set = set, get = get,
                 setInverse = setInverse,
                 getInverse = getInverse)
}


## This function calculates the inverse of the matrix returned above 

cacheSolve <- function(x, ...) {
		inv <- x$getInverse() #Retrieves the inverse from the getInverse function
		# First, check if the inverse has already being calculated. If yes, return it
		if(!is.null(inv)) { 
                    message("getting cached data")
                    return(m)
            }
		#Gets the value of the new matrix
		data <- x$get()
            inv <- solve(data, ...) 
            x$setInverse(inv) #set value of inverse in the cache
            inv
}
