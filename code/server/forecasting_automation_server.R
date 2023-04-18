###-----------------------tab for controlling extend sim------------------------------------


#---------------------------------------run extend sim----------------------------------------------------------

###run extend sim
observeEvent(input$run_test_1, {

  system("cmd.exe", input = paste0(getwd(),"\\es_automation\\set_venv.bat"))
  # system("cmd.exe", input = paste0(getwd(),"\\es_automation\\set_modules.bat"))
  # run_all()
  program_handle <- run_test_1()
  print("program_handle in R")
  print(program_handle)

})



observeEvent(input$run_test_2, {

  run_test_2()

})


observeEvent(input$run_test_3, {

  run_test_3()

})