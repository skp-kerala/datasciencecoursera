## Doing a matrix inversion
## inversing of a matrix

## inverse of matrix (cache)

makeCacheMatrix <- function(x = matrix()) {
makeCacheMatrix <- function(x = matrix()) {
  test<-NULL
  set<-function(y){
    x<<-y
    test<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) test<<- solve
  getmatrix<-function() test
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## To inverse a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inversing <- x$getinverse()
    if(!is.null(inversing)) {
        message("getting cached data.")
        return(inversing)
    }
    data <- x$get()
    inversing <- solve(data)
    x$setinverse(inversing)
    inversing
}

