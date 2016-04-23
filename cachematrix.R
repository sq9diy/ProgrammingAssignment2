## Put comments here that give an overall description of what your
## functions do
##Functions  computing the inverse of a squere input matrix
##Important: Functions do not check, if the input matrix is invertivle


## Write a short comment describing this function
## Function create a vecotr of funtions for:
## - set input matrix 
## - get input matrix
## - set inverse matrix 
## - get inverse matrix

cmakeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x<<-y
    i<<-NULLmm
  }
  get <- function() x
  setinverse <- function(solve) i <<-solve
  getinverse <- function() i
  list(set = set, get = get, 
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## funtion check, if in cache is ready inverese matrix
## if yes - simple return it 
## if no - calculate inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)){
    message ("getting cache inverse matrix")
    return (i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  
}
