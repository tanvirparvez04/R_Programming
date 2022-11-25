#to know 

help("install.packages")
install.packages("name of the package")

#to remove:
remove.packages("name o the package")
#where,s the path where is it installed
libPaths()
#all of the name of installed packages in my r:
installed.packages()

##check if eipiR is installed
system.file(package='epiR')

install.packages("xlsx")
#-------------------------------------------
#install xlsx package:
install.packages("xlsx")

# Verify the package is installed.
any(grepl("xlsx",installed.packages()))#TRUE:yes installed,FALSE:not installed
any(grepl("Tanvir",installed.packages()))

# Load the library into R workspace.
library("xlsx")
library("xlsx")
