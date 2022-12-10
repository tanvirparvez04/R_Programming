# Create a vector.
apple_colors <- c('green','green','yellow',"komla","beden",'red','red','red','green')
# Create a factor object.
factor_apple <- factor(apple_colors)
class(factor_apple)
# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))


# Create the data frame.
BMI <- data.frame(
  gender = c("Male", "Male","Female","msle"),
  age=c(10,20,30,40),
  marks=c(60,65,66.1,44.2)
)
print(BMI)

gender = c("Male", "Male","Female","msle")
age=c(10,20,30,40)
marks=c(60,65,66.1,44.2)
ls()

cat("gender is ",gender,"\n")
cat ("var.1 is ", gender ,"\n")
cat ("var.2 is ", marks,"\n")
cat ("var.3 is ", var.3 ,"\n")
