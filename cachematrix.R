
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

 m <- NULL                                                      ##first,set a NULL m as the receivor for inverse
        set <- function(y) {
                x <<- y                                         set y to x,NULL to m in the global environment
                m <<- NULL
        }
        get <- function() x                                     ##demenstrate the context of x,which is the matrix
        set_inverse <- function(inv) m <<- inv                  ##set inverse value to the x in a global environment,and store it to m, which has been set
        get_inverse <- function() m                             ##demenstrate the inverse of matrix
        list(set = set, get = get,
             set_inverse= set_inverse,
             get_inverse= get_inverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$get_inverse()                                          ##the function which is applied to inverse the matrix
        if(!is.null(m)) {                                     ##detect whether or not the inverse has been calculated
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)                                 ##inverse the matrix
        x$set_inverse(m)                                      ##set the value
        m                                                     ##return the value

}
