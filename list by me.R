#list
list1<-list("apple","banna","kodbel","mango","amloki")
list1

#access(index=koto number ta proint korte chai seta deya)
list1[2]

#Change Item Value
list1[1] <- "kola"
list1

#list length
length(list1)

#check if item exist
list1
"kola" %in% list1
"apple" %in% list1

#Add List Items
#To add an item to the end of the list, use the append() function:

list1
append("alu",list1)
list1[3]
append(list1,"guyava")

#To add an item to the right of a specified index,
#add "after=index number" in the append() function:
append(list1,"komla",after=2)

#Remove List Items
list1
newlist1<-list1[-2]
newlist1
list1[-1]

#range of indexes
list1[2:4]

#Loop Through a List
for (x in list1) {
  print(x)
  
}

#Join Two Lists
list2<-list(1,2,3,4)
list3<-list("good","bad")
z=c(list1,list2,list3)
z
m=paste(list1,list2,list3)
m