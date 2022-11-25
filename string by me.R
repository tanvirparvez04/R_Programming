#string

str<- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt"
str
#new line
cat(str)#jaiga moto line hoye jabe

#String Length
nchar(str)

#Check a String
grepl("do",str)
grepl("Tanvir",str)


#Combine Two Strings

str1<-"Tanvir"
str2<-"parvez"

paste(str1,str2)

#Escape Characters

str3<-"We are the so-called \"Vikings\", from the north."
str3
cat(str3)

#some importent
#\\	Backslash
#\n	New Line
#\r	Carriage Return
#\t	Tab
#\b	Backspace
