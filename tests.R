aVector <- c(17,24,1,8,15,23,5,7,14,16,4,6,13,20,22,10,12,19,21,3,11,18,25,2,9)
aMatrix <- matrix(aVector,5,5)
## This is the test matrix.
print(aMatrix)
## This is the expected inverse.
print(solve(aMatrix))

print(aMatrix %*% solve(aMatrix))

MatrixWithCharge <- makeCacheMatrix(aMatrix)
## The function cacheSolve calculate the inverse when it performs on 
## the object MatrixWithCharge for the first time.
print(cacheSolve(MatrixWithCharge))
## When it processes the object for the second time, 
## it directly gets the answer from the buffer. 
print(cacheSolve(MatrixWithCharge))