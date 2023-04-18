tabPanel("Open extend sim",
         fluidRow( # major row that contains whole body
           column( # major column that contains whole body
             width = 12,
             
             column(  # this is the 1st main column - with the buttons
               width = 6,
               
               actionButton("run_test_1",
                            "run test 1",
                            icon = NULL,
                            width = "220px"),
               actionButton("run_test_2",
                            "run test 2",
                            icon = NULL,
                            width = "220px"),
               actionButton("run_test_3",
                            "run test 3",
                            icon = NULL,
                            width = "220px")
             ), #this is the end of the 1st main column
             
           ) # end of major column that contains whole body
         ) # end of major row that contains whole body
)# end of tab panel