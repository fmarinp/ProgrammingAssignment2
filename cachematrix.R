## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#steps needed:
#1.  set the value of the vector
#2.  get the value of the vector
#3.  set the value of the mean
#4.  get the value of the mean


#just copy pasting now from makevector.. mean-->solve
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinvm <- function(solve) m <<- solve
    getinvm <- function() m
    list(set=set, get=get,
         setinvm = setinvm,
         getinvm = getinvm)    
}


## Write a short comment describing this function
#works as intended.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinvm()
    if(!is.null(m)){
        message("getting cached data..")
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$setinvm(m)
    m
}

