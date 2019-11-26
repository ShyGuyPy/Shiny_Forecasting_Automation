tabPanel("Open extend sim",
         fluidRow( # major row that contains whole body
           column( # major column that contains whole body
             width = 12,
             
             column(  # this is the 1st main column - with the buttons
               width = 6,
               
               actionButton("run_all",
                            "run Extend Sim",
                            icon = NULL,
                            width = "220px"),
               # actionButton("view_data_w",
               #              "Observe data",
               #              icon = NULL,
               #              width = "220px"),
               # actionButton("accept_data_w",
               #              "Accept and save the data",
               #              icon = NULL,
               #              width = "220px")
             ), #this is the end of the 1st main column
             
           ) # end of major column that contains whole body
         ) # end of major row that contains whole body
)# end of tab panel