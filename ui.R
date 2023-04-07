dashboardPage(skin = "blue",
              dashboardHeader(title = "forecasting automation",
                              .list = NULL
                              
              ), #end dashboardHeader
              
              dashboardSidebar(width = 250
              ),#end dashboardSiderbar
              dashboardBody(
                navbarPage(title=NULL,
                           source("code/ui/forecasting_automation_ui.R", local = TRUE)$value
                ) #end nav bar
                
              ) # end dashboardBody
) # end dashboardPage

