need <- c("dplyr","reticulate")
# find out which packages are installed
ins <- installed.packages()[, 1]
# check if the needed packages are installed
print("ins=")
print(ins)
(Get <-
    need[which(is.na(match(need, ins)))])
print("Get=")
print(Get)

print("Get is greater than 0")
if (length(Get) > 0) {print("this it true")}

# install the needed packages if they are not-installed
if (length(Get) > 0) {
  install.packages(Get)
}

# load the needed packages
eval(parse(text = paste("suppressPackageStartupMessages(library(", need, "))")))
rm(Get, ins, need)

library(dplyr)
library(reticulate)




#use python packaged with r project
use_python(paste0(getwd(),"/portable_python/Python 3.9"))



source_python(paste0(getwd(),"/remote_run_test.py"))
