x<-c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA, 9, 4, 16, 2, 0)
x[1]
x[length(x)]
x[3:5]
x[x==2]
x[x>4]
x[x%%3==0]
x[x>4 & x%%3==0]
x[x<1 | x>5]
which(x==0)
which(x>=2 & x<8)
sort(x[x!=2], decreasing = FALSE)


f <- scan('coords.txt', sep='\t')
p <- 4.43
res <- (sum(abs(f)^p[1]))^1/p[1]
write(x = res, file = 'result.txt')
res

x1 <- NA
x2 <- NA
s <- scan('coords.txt', sep='\t')
for(n in 2:length(s)-1) {
  if(length(s)-1 < 2)
    break
  x1[n-1] <- s[n] - s[n-1]
  if (n > 2){
    x2[n-2] <- x1[n-1] - x1[n-2]
  }
  
}
x1
x2
