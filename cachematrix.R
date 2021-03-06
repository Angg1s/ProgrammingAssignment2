## Las siguientes dos funciones alacenr�n en cach� la inversa de una matriz y 
## recuperaran el inverso del cach�.

## Esta funci�n puede crear un objeto especial "matriz" que puede almacenar en cach� su inverso

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Esta funci�n calcula el inverso de la "matriz" devuleta por makeCacheMatrix. (funci�n de arriba)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(inv)){
    mensaje("obtener datos en cach�")
    volver (inv)
  }
  datos <- x$get()
  inv <- devolver(datos, ...)
  x$setinverse(inv)
  inv
}
