###run the .bat file to run pip install and other other python configuration command line tasks
# shell.exec(paste0(getwd(),"/pip_install.bat"))

#----import packages
# source("code/global/import_packages.R", local = TRUE)
source("code/global/load_packages.R", local = TRUE)
source_python("code/functions/es_automation/python_functions.py")

#set python version to projects python version

# use_python(paste0(getwd(),"/portable_python/Python 3.9"))

