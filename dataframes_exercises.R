##################
# DATAFRAMES
#################


###
# 1
###

df = data.frame(Ints=integer(), Doubles=double(), Characters=character(),
Logicals=logical(), Factors=factor(), stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))


###
# 2
###

v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
print(df)


###
# 3
###

v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
print(str(df))


###
# 4
###


v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
summary(df)


###
# 5
###

v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
print(df$v4)


###
# 6
###

v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
print(df[1:2,])


###
# 7
###


v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
print(df[c(3,5), c(1,3)])


###
# 8
###


v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
df$v5 = c(2,5,7,9)
print(df)


###
# 9
###


v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
df$v5 = c(2,5,7,9)
print(df)


###
# 10
###


v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
df = subset(df, select = -c(v1))
print(df)


###
# 11
###

v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
df = df[-c(2,3),]
print(df)


###
# 12
###


v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(10,11,12,13)
v4 = c(18,11,18,19)
df = data.frame(v1=v1, v2=v2, v3=v3, v4=v4)
df = df[with(df, order(v4, v3)), ]
print(df)


###
# 13
###

df1 = data.frame(numid = c(12, 14, 10, 11))
df2 = data.frame(numid = c(13, 15, 11, 12))
print("Left outer Join:")
result = merge(df1, df2, by = "numid", all.x = TRUE)
print(result)
print("Right outer Join:")
result = merge(df1, df2, by = "numid", all.y = TRUE)
print(result)
print("Outer Join:")
result = merge(df1, df2, by = "numid", all = TRUE)
print(result)
print("Cross Join:")
result = merge(df1, df2, by = NULL)
print(result)



###
# 14
###

df = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
df[is.na(df)] = 3
print(df)


###
# 15
###

df = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
colnames(df)[which(names(df) == "score")] = "puntuasao"
print(df)


###
# 16
###

df = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
colnames(df)[which(names(df) == "score")] = "puntuasao"
colnames(df)[which(names(df) == "name")] = "nombresito del bb"
print(df)



###
# 17
###

df = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print(df[sample(nrow(df), 3),])



###
# 18
###


df = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
df = df[c("name", "attempts", "score", "qualify")]
print(df)



###
# 19
###


df = data.frame(
  name = c('Anastasias', 'Dimas', 'Katherines', 'Jamess', 'Emily', 's', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

df_2 = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print(setdiff(df,df_2))


###
# 20
###


df = data.frame(
  name = c('Anastasias', 'Dimas', 'Katherines', 'Jamess', 'Emily', 's', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

df_2 = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes')
)
print(intersect(df,df_2))



###
# 21
###


a = c("a", "b", "c", "d", "e")
b = c("d", "e", "f", "g")
print("Original Dataframes")
print(a)
print(b)
print("Find elements come only once that are common to both given dataframes:")
result = union(a, b)
print


###
# 22
###

"""
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print('Original dataframe:')
print(exam_data)
save(exam_data,file='data.rda')
load('data.rda')
file.info('data.rda') 
"""



###
# 23
###


df = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print(sum(is.na(df$attempts)))


###
# 24
###


a = c(1,2,3,4,5,6,7,8,9,1,1,2,3,6,5,9)
b = c(1,2,3,6,5,9,8,7,4,5,6,3,2,2,5,3)
df_1 = data.frame(a,b)
print(duplicated(df_1))
print(unique(df_1))



###
# 25
###


data = airquality
print(class(data))
result = data[order(data[,1]),]
print(result)



###
# 26
###



data = airquality
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print(data)
