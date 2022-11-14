#Basic Data types:
#There are 6 data types: 
#1.logical 2.numeric 3.integer  4.complex 5.character 6.raw.

#1.numeric:
x<-50 #10.5,5654 etc
x
class(x)


#2.logical
y<-TRUE
y
class(y)#logical

#3.complex

z<-6+5i
z
class(z)

#4.integer
i<-10L#Always L dite hobe
i
class(i)

#5.string or characterr
name<-"Tanvir"
name
class(name)


#x <- 10.5   # numeric
#y <- 10L    # integer
#z <- 1i     # complex

#----------------------------------------------------------

#Type Conversion:
#You can convert from one type to another with the following functions:
  
#as.numeric()
#as.integer()
#as.complex()
x
class(x)
as.character(x)
as.complex(x)
as.integer(x)
as.integer(x)

name
class(name)
as.integer(name)#wrong
as.complex(name)#wrong
as.numeric(name)#wrong

x <- 1L # integer
y <- 2 # numeric

# convert from integer to numeric:
a <- as.numeric(x)

# convert from numeric to integer:
b <- as.integer(y)

# print values of x and y
x
y

# print the class name of a and b
class(a)
class(b)

3-------------------------------------------

