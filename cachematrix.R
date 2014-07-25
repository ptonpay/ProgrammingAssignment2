## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function returns a list which has functions called setInv, getInv and get which would be used in cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
	invm <- NULL
        getInv <- function() invm;
        setInv <- function(v) invm <<- v;
        get <- function() matrixX;
        list( setInv = setInv, getInv = getInv, get = get );
}


## Write a short comment describing this function
## This function checks whether the inverse in cache or not, using getInv function on the list object. If the 
## value is found in cache, it is returned. If it is not found in cache it is computed and stored in invm variable 
##
cacheSolve <- function(x, ...) {
	m <- x$getInv();
        if( !is.null(m)) {
                message("getting cached data")
                return(m)
        }

        data <- x$get();
        m <- solve(data);
        x$setInv(m);
        m

        ## Return a matrix that is the inverse of 'x'
}
