shinyServer(function(input, output, session) {
  #download flows/withdrawals tab
  source("code/server/forecasting_automation_server.R", local=TRUE)
}) # end shinyServer