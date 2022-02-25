
# Часть 2.1 -----------------------------------------------------------------
A <- c(4,9)
matrix <- diag(A, nrow = 2, ncol = 2, names = TRUE)
rownames(matrix) <- paste('eq', 1:2)
colnames(matrix) <- paste('x', 1:2)
matrix

# Часть 2.2 ---------------------------------------------------------------
e <- eigen(matrix)
e$values
e$vectors

# Часть 2.3 ---------------------------------------------------------------

i <- diag(1, nrow = 2, ncol = 2)
B <-i - matrix
B

# Часть 2.4 ---------------------------------------------------------------

f <- c(4,2)
u <- c(0.2, -0.3)
new <- c(f,u)
m <- rbind(f,u)
m

# Часть 2.5 ---------------------------------------------------------------
u_res <- solve(matrix) %*% f
u_res

# Часть 2.6 ---------------------------------------------------------------


u1 <- u
for (i in 2:7){
  u = B%*%u + f
  if  (i==2) u2 <- u
  if  (i==3) u3 <- u
  if  (i==4) u4 <- u
  if  (i==5) u5 <- u
  if  (i==6) u6 <- u
  if  (i==7) u7 <- u
}
u7
u_res

# Часть 2.7 ---------------------------------------------------------------

comp <- u7 - u_res
comp

# Часть 2.8 ---------------------------------------------------------------
d <- max(matrix)
d
matrix <- matrix / d
matrix
f <- f / d
f

# Часть 2.9 ---------------------------------------------------------------
r <- eigen(matrix)
r$values
r$vectors

i <- diag(1, nrow = 2, ncol = 2)
i

matrix
matrix <- i - matrix
matrix

b_res <- solve(matrix) %*% f
b_res



b <- b_res
b1 <- b 
for (i in 2:7){
  b = matrix%*%b + f
  if  (i==2) b2 <- b
  if  (i==3) b3 <- b
  if  (i==4) b4 <- b
  if  (i==5) b5 <- b
  if  (i==6) b6 <- b
  if  (i==7) b7 <- b
}
b7
b_res

