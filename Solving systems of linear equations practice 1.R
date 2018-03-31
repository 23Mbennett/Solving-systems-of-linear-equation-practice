#Solving systems of linear equations practice 1
## Begin by defining known parameters Ax = d
#1. defining matrix A
A <- array(c(5,3,2,1,-2,-1,4,-7,2), dim = c(3,3))
A
#2. defining vector d
d <- c(4,5,-37)
d
#3. Calculate inverse of A or A^(-1)
invA <- solve(A)
invA
#4. Now multiply invA*d = x
x <- invA %*% d
x
#5. Now double check we got the right solution vextor x, by doing Ax = d 
A %*% x 

