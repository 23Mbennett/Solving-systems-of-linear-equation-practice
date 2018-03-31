#Solving systems of linear equation practice 2
## Begin by defining known parameters Ax = d
#1. defining matrix A & vector d
A <- array(c(5,3,2,1,-2,-1,4,-7,2), dim = c(3,3))
d <- c(4, 5, -37)
x <- solve(A,d) 

#double check by Multiplying Matrix A*x is equal to d
A %*% x 
#or using
A %*% solve(A,d)


