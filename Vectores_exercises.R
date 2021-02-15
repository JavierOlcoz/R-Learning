###
# VECTORES
###

###
# 3
###

v = c()

values <- c(8,9)

v <- values
print(v)


###
# 6
###

v = c(3,4,5,6)
print("Sum:")
print(sum(v))
print("Mean:")
print(mean(v))
print("product:")
print(prod(v))


###
# 7
###

v = c(3,4,5,6)
print("Sum:")
print(sum(v, na.rm = TRUE))
print("Mean:")
print(mean(v, na.rm = TRUE))
print("product:")
print(prod(v, na.rm = TRUE))


###
# 8
###

v = c(3,4,5,6)
print("min:")
print(min(v))
print("Max:")
print(max(v))


###
#9
###

v = c(3,4,6,5)
print("ascending order:")
print(sort(v))
print("descending order:")
print(sort(v, decreasing=TRUE))


### 
#10
###

v = c(3,4,6,5)
print("contains element:")
print(is.element(12,v))


###
#12
###

v = c(3,4,6,5)
print("Last value:")
print(tail(v,1))


###
#13
###

v = c(3,4,6,5)
print("Find second highest value in a given vector:")
l = length(v)
print(sort(v)[l-1])


###
#14
###


v = c(3,4,6,5)
print("Find second highest value in a given vector:")
l = length(v)
n = 4
m = n-1
print(m)
print(sort(v)[l-m])


###
#16
###

dfc1 = c(1, 2, 3, 4, 5)
dfc2 = c(6, 7, 8, 9, 10)
dfc3 = c(11, 12, 13, 14, 15)
dfc4 = c(16, 17, 18, 19, 20)
v <- data.frame(dfc1=1:5, dfc2=6:10, dfc3=11:15, dfc4=16:20)
vector <- v$dfc2
print(vector)


###
#20
###

v = c(3,4,6,5)
print("Reverse order:")
revertido <- rev(v)
print(revertido)


###
#23
###

dfc1 = c(1, 2, 3, 4, 5)
dfc2 = c("d", "we", "lo", "ja", "er")
dfc3 = c(11, 12, 13, 14, 15)
dfc4 = c(16, 17, 18, 19, 20)
v <- data.frame(dfc1=1:5, dfc2=dfc2, dfc3=11:15, dfc4=16:20)
print(v)
vectores = setNames(as.character(v$dfc4), v$dfc2)
print(vectores)