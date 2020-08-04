## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                       ##the value of matrix inverse
       set <- function(y) {
              x <<- y             ##value of the principal matrx
              m <<- NULL
       }
       get <- function() x            #assign a new variable
       setmean <- function(mean) m <<- mean
       getmean <- function() m           ## get the value of m where is called that the will be use for be a matrix and not a list
       list(set = set, get = get,
            setmean = setmean,
            getmean = getmean)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {                                ### Return a matrix that is the inverse of 'x' and  i used the same code that the example becuse is the same exercise
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmean()                           
       if(!is.null(m)) {
              message("getting cached data")
              return(m)
       }
       data <- x$get()                                          ##this will be the data getting wiht the mean
       m <- mean(data, ...)
       x$setmean(m)
       m
}
