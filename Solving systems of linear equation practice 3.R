#Solving systems of linear equations practice 3
A <- array(c(1, 10, -1, 4,-3, 2, 6, 9, 11), dim = c(3,3))
d <- c(21, 5.25, 64.25)
invA <- solve(A)
x <- invA %*% d
x
#double check Ax = d
A %*% x

