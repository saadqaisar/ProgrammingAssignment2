## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##1.	set the value of the matrix
##2.	get the value of the matrix
##3.	set the value of the inverse
##4.	get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinver <- function(inverse) inver <<- inverse
        getinverse <- function() inver
        list(set = set, get = get,
             setinver = setinver,
             getinver = getinver)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinver()
        if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
        data <- x$get()
        inver <- solve (data, ...)
        x$setinver(inver)
        inver

}
