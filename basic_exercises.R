###########
# BASIC
##########


###
# 3
###

x = c(20:50)
print(x)

print(mean(c(20:60)))

print(sum(c(51:91)))


###
# 4
###

v = sample(-50:50, 10, replace=TRUE)
print(v)


###
# 5
###
### NO SUPE RESOLVERLO SIN MIRAR Y SIN BUCLES

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print


###
# 7
###

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}


###
# 9
###

print_factors = function(n) {
  print(paste("The factors of",n,"are:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}
print_factors(4)


###
# 10
###

min = 30
max = 0

v = c(1,2,3,4,7,1)

for (i in v) {
  if (i > max){
    max <- i
  }
  if (i < min){
    min <- i
  }
}
print(max)
print(min)


###
# 13
###

n = floor(rnorm(1000, 50, 100))
t = table(n)
print(t)


###
# 15
###

a = c( 4, 0, -1, -3)
b = c("Manzana", "Platano", "White")
c = c(TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))



###
# 22
###

n = floor(rnorm(10000, 1000, 100))
t = table(n)
barplot(t)



###
# 25
###

Employees = data.frame(Name=c("Antonio","Alex","Javi"),
                       Gender=c("F","M","M"),
                       Age=c(230,600,24),
                       Designation=c("Artist","Exective","CEO")
                       
)
print("Details of the employees:")                      
print(Employees)



###
# 26
###

Employees = data.frame(Name=c("Antonio","Alex","Javi"),
                       Gender=c("F","M","M"),
                       Age=c(230,600,24),
                       Designation=c("Artist","Exective","CEO")
                       
)
print("Details of the employees:")                      
print(summary(Employees))