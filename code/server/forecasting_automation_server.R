###-----------------------tab for controlling extend sim------------------------------------


#---------------------------------------run extend sim----------------------------------------------------------

###run extend sim
observeEvent(input$run_all, {
  # run_all()
  # shell.exec(paste0(getwd(),"\\es_run_all.bat"))
  # system("start es_run_all.bat")
  system("cmd.exe", input = paste0(getwd(),"\\code\\server\\es_run_all.bat"))
  
})