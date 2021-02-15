#########
# LISTAS
#########

###
# 1
###

listaca = list("Javi", c(5, 7, 9, 11), TRUE, 125.17, 75.83)
print("Data of the list:")
print(listaca)


###
# 8
###

lista_1 = list(1,2,3)
lista_2 = list("Red", "Green", "Black")
mlist =  c(lista_1, lista_2)
print(mlist)


###
# 10
###

df1 = data.frame(y1 = c(0, 1, 2), y2 = c(3, 4, 5))
df2 = data.frame(y1 = c(6, 7, 8), y2 = c(9, 10, 11))
new_list = list(df1, df2)
print(new_list[[1]])
print(new_list[[2]])


###
# 11
###

df1 = data.frame(y1 = c(0, 1, 2), y2 = c(3, 4, 5))
df2 = data.frame(y1 = c(6, 7, 8), y2 = c(9, 10, 11))
new_list = list(df1, df2)
length(new_list)


###
# 12
###


exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
new_list = split(exam_data, seq(nrow(exam_data)))
print("dataframe rows to a list:")
print(new_list)


###
# 14
###


df1 = data.frame(y1 = c(0, 1, 2), y2 = c(3, 4, 5))
df2 = data.frame(y1 = c(6, 7, 8), y2 = c(9, 10, 11))
new_list = list(df1, df2)
new_list[1] = list(NULL)
print(new_list)