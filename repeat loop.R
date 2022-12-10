# R – Repeat loop Syntax: 
#   repeat 
#   { 
#     statement
#     
#     if( condition ) 
#     {
#       break
#     }
#   }




i=1
repeat{
  print(i)
  i=i+1
  if(i>5){
    break
  }
}

name<-c("tanvir parvez")
cnt=2
repeat{
  print(name)
  cnt=cnt+1
  if(cnt==5){
    break
  }
}

val=1
repeat{
  print(val)
  val=val+1
  if(val==5){
    break
  }
}
