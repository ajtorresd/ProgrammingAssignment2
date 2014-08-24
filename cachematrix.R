matrizGuiada <- function( matriz = matrix() ) {
        inverso <- NULL
        set <- function( matrix ) { matriz <<- matrix inverso <<- NULL}
        get <- function() { matriz }
        setInverse <- function(inverse) {  inverso <<- inverse}
        getInverse <- function() {inverso }
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
mejorarCache <- function(x, ...) {
        matriz <- x$getInverse()
        if( !is.null(matriz) ) {
                message("Obtener el Cache")
                return(matriz)
        }
        data <- x$get()
        matriz <- solve(data) %*% data
        x$setInverse(m)
        matriz
}