A <- array(c(12, 3, 6, 9, -1, -4), dim = c(2,3))
B <- array(c(7, 8, -2, 0, 1, 11)), dim = c(3,2))
C <- array(c(1, -1, 0, -1, 1, 1, 0, 1, 1), dim = c(3,3))
D <- array(c(2,-2, 0, 1, 1, 1, 0, 4, 3), dim=c(3,3))
E <- array(c(1,2,3,4,5,6,7,8,9), dim= c(3,3))
#Basic Matrix properties (often times order matters)
#1.when multiplying (cols1*rows1)(cols2*rows2) must be #rows1= #cols2
##ex. good 
A%*%C
##ex. bad
B%*%D
#2. CD = DC this is not always the case even with two similar matrices
C%*%D
D%*%C
## However if you multipy a matrix by its transpose it is C'C = CC'
### A transpose is flipping an arrays row elements to column elements
C
t(C)
C%*%(t(C))
(t(C))%*%C
#3. You may only add and subtract matrices with same dimensions
##Subtracting to matrices is the same as multiplying one by scalar -1 and then adding (r does it for you!)
C - D
#4. Communative property holds for matrix addition C+D = D+C
C + D 
D + C
#5. Associative property holds for matrix addition (C+D) + E = C + (D+E)
(C+D) + E
(D+E) + C
#6. Associative property holds for matrix multiplication but inorder...eghh (AB)C = A(BC) also holds for any onrder of scalars
##ex good.... (CD)E = C(DE)
(C%*%D)%*%E
C%*%(D%*%E)
##ex. bad ...(CD)E = C(ED)
(C%*%D)%*%E
C%*%(E%*%D)
#7. Distributive property holds for matrices C(D+E) = CD + CE
C%*%(D+E)
(C%*%D) + (C%*%E)
#8. (AB)'= B'A' but (AB)'/= A'B'...similarly (ABC)'= C'B'A'
t(A%*%B)
(t(B))%*%(t(A))
##ex.bad
(t(A))%*%(t(B))
#9. an indetity matrix is a square matrix with ones in all diagonal elements, its value is bascially equal to 1
##Ex.defining a 3x3 identity matrix
C%*%I
I%*%D
C
D
