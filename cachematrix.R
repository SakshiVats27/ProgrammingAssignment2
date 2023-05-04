## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #define the argument with default mode of matrix
        inv <- NULL
        #initialise inv as null, will hold value of matrix inverse
        set <- function(y){
                #define set function to assign new
                x<<-y
                #value of matrix in parent environment
                inv<<-NULL
                #reset inv to null for new matrix

}
get <- function()x
        #returns value of matrix argument
        setinverse<-function(inverse)inv<<- inverse
        getinverse<-function()inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

## Write a short comment describing this function
#this function computes the inverse of the special matrix returned above
cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
        inv<-x$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
                }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
        
       
}
