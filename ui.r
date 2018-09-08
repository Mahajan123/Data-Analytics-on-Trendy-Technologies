library(ggplot2)
library(shiny)
library(shinydashboard)
library(plotly)
shinyUI(
  # 
  
  fluidPage(
    
    
    titlePanel(HTML('<b><center><font color="black">Walchand College Of Engineering,Sangli
                    <br>
                    
                    Computer Science And Engineering</font></center></b>')),
    
    
    
    dashboardPage(
      dashboardHeader(title="Technologies"),
      
      #navbarPage(HTML('<font color="black"><h4><b><font-family="Georgia">Trending Technologies</b></h4></font>')),
      
      
      dashboardSidebar(
        
        
        sidebarMenu(
          
          menuItem("Technology Graphs",tabName="maintech"),
          
          br(),
          menuSubItem("2016-17 technology graph",tabName ="2016-17"),
          menuSubItem("analysis of review",tabName="analysis"),
          menuSubItem("Future scope of technologies",tabName="future"),
          br(),
          menuItem("Help",tabName = "help"),
          menuItem("Raw Data",tabName = "raw"),
          menuItem("About Us",tabName="about")
          
          
        )),
      dashboardBody(
        fluidRow(
          
          tabItems(
            
            tabItem(tabName = "maintech",
                    HTML('<font color="black"><h2><center><b>Data Analytics On Trendy Technologies</b></center></h2></font>'),
                    img(src='new1.gif', align = "right",style="width:100%;",style="height:80%;")),
            
            
            
            tabItem(tabName = "2016-17",
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    navbarPage(HTML('<font color="white"><h4><b><font-family="Georgia"></b></h4></font>'),
                               
                               navbarMenu(HTML('<font color="black"><h4><b>Different Visualizations</b></h4></font>'),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b></b></h5></font>'),
                                                   
                                                   style="width:1000px;",style="height:100px;",
                                                   fluidRow(   
                                                     mainPanel(
                                                       
                                                       box(
                                                         
                                                         HTML('<font color="black"><center><h5><b>Graph of technologies used by students 2016-17 in their projects!!</b></h5></center></font>'),
                                                         br())
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       #HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                                                       
                                                       #tags$a(href = "https://www.tutorialspoint.com/r/r_pie_charts.htm",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                       
                                                     ))),
                                          
                                          
                                          
                                          
                                          
                                          
                                          tabPanel(HTML('<font color="black"><h5><b> BARCHART</b></h5></font>'),
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       sidebarPanel(
                                                         HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                                         HTML('<font color="black"><h5><b>This is the Barchart Visualization of the 2016-17 technology graph</b></h5></font>'),
                                                         br(),
                                                         
                                                         
                                                         
                                                         
                                                         HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                                                         
                                                         tags$a(href = "https://plot.ly/r/",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                         
                                                       ),
                                                       
                                                       
                                                       
                                                       
                                                       box(
                                                         style="width:800px;",style="height:100px;",
                                                         #collapsible = TRUE,
                                                         fluidRow(
                                                           data<-data.frame(TechnologyNames,Frequency),
                                                           
                                                          
                                                           
                                                           plot_ly(data, x= ~TechnologyNames, y= ~Frequency,type= 'bar',
                                                                    marker =list(color = c('rgba(0,0,0,1)',
                                                                                           'rgba(255,110,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           ' rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           ' rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)')))
                                                           %>%
                                                             layout(margin = list(l = 150, r = 20, b = 70, t = 10),
                                                                    yaxis = list(title = paste0(c(rep("&nbsp;", 20),
                                                                                                  "Frequency",
                                                                                                  rep("&nbsp;", 20),
                                                                                                  rep("\n&nbsp;", 3)),
                                                                                                collapse = "")))
                                                           
                                                           
                                                         ))
                                                     ))
                                                   
                                                   
                                                   
                                                   
                                          ),                                           
                                          
                                          
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>PIECHART</b></h5></font>'),
                                                   
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       sidebarPanel(
                                                         HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                                         HTML('<font color="black"><h5><b>This is the Pie chart Visualization of the 2016-17 technology graph</b></h5></font>'),
                                                         br(),
                                                         
                                                         
                                                         
                                                         
                                                         HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                                                         
                                                         tags$a(href = "https://www.tutorialspoint.com/r/r_pie_charts.htm",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                         
                                                       ),
                                                       
                                    
                                                                          box
                                                       (
                                                         fluidRow(
                                                           style="width:800px;",style="height:100px;",
                                                           #collapsible = TRUE,
                                                           
                                                           plotOutput("distplot")
                                                           
                                                         )
                                                       )
                                                       
                                                     )
                                                   )
                                                   
                                                   
                                                   
                                          ),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>HORIZONTAL BAR</b></h5></font>'),
                                                   fluidRow(   
                                                     mainPanel(
                                                       sidebarPanel(
                                                         #HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                                         HTML('<font color="black"><h5><b>This is the Horizontal bar Visualization of the 2016-17 technology graph</b></h5></font>'),
                                                         br(),
                                                         
                                                         
                                                         
                                                         
                                                         HTML('<font color="black"><h5><b>To learn this </b></h5></font>'),
                                                         
                                                         tags$a(href = "https://plot.ly/r/",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                         
                                                       ),
                                                       
                                                       box
                                                       (
                                                         fluidRow(
                                                           style="width:800px;",style="height:400px;",
                                                           #collapsible = TRUE,
                                                           data1<-data.frame(Frequency,TechnologyNames),
                                                           plot_ly(data1,x = ~Frequency,y = ~paste0(TechnologyNames,'  '),type='bar',orientation='h',
                                                                   
                                                                   
                                                                   marker =list(color = c('rgba(0,0,0,1)',
                                                                                          'rgba(255,110,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          ' rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          ' rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)'))) %>%
                                                             
                                                             layout(margin = list(l = 150, r = 20, b = 70, t = 10),
                                                                    yaxis = list(title = paste0(c(rep("&nbsp;", 20),
                                                                                                  "Technology",
                                                                                                  rep("&nbsp;", 20),
                                                                                                  rep("\n&nbsp;", 3)),
                                                                                                collapse = "")))
                                                           
                                                           
                                                           
                                                           
                                                           
                                                         )
                                                       )
                                                       
                                                     )
                                                   )
                                                   
                                                   
                                                   
                                                   
                                                   
                                          )#tabpanel
                                          # tabPanel(HTML('<font color="black"><h5><b>RADIAL BAR</b></h5></font>'),
                                          #          fluidRow(   
                                          #            mainPanel(
                                          #              sidebarPanel(
                                          #                HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                          #                HTML('<font color="black"><h5><b>This the graph Of current technology in our college</b></h5></font>'),
                                          #                br(),
                                          #                
                                          #                
                                          #                HTML('<font color="black"><h5><b>Machine Learning Is At Top In Our college</b></h5></font>'),
                                          #                
                                          #                HTML('<font color="black"><h5><b>Click On Link To See This Top</b></h5></font>'),
                                          #                
                                          #                tags$a(href = "https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=rfv6WfeEGIHT8geMlrmACA",HTML('<font color="orange"><h4><b>Clicks</b></h4></font>'))
                                          #                
                                          #              ),
                                          #              
                                          #              box
                                          #              (
                                          #                fluidRow(
                                          #                  
                                          #                  # Usual bar plot :
                                          #                  ggplot(data, aes(x = group, y = value ,fill = group )) + 
                                          #                    geom_bar(width = 0.85, stat="identity"),
                                          #                  
                                          #                  # Circular one
                                          #                  ggplot(data, aes(x = group, y = value ,fill = group)) + 
                                          #                    geom_bar(width = 0.85, stat="identity") +    
                                          #                    
                                          #                    # To use a polar plot and not a basic barplot
                                          #                    coord_polar(theta = "y") +    
                                          #                    
                                          #                    #Remove useless labels of axis
                                          #                    xlab("   ") + ylab("    ") +
                                          #                    
                                          #                    #Increase ylim to avoid having a complete circle
                                          #                    ylim(c(0,100)) + 
                                          #                    
                                          #                    #Add group labels close to the bars :
                                          #                    geom_text(data = data, hjust = 1, size = 3, aes(x = group, y = 0, label = group)) +
                                          #                    
                                          #                    #Remove useless legend, y axis ticks and y axis text
                                          #                    theme(legend.position = "none" , axis.text.y = element_blank() , axis.ticks = element_blank())
                                          #                  
                                          #                    # layout(margin = list(l = 150, r = 20, b = 70, t = 10),
                                          #                    #        yaxis = list(title = paste0(c(rep("&nbsp;", 20),
                                          #                    #                                      "Technology",
                                          #                    #                                      rep("&nbsp;", 20),
                                          #                    #                                      rep("\n&nbsp;", 3)),
                                          #                    #                                    collapse = "")))
                                          #                    # 
                                          #                  
                                          #                  
                                          #                  
                                          #                  
                                          #                )
                                          #              )
                                          #              
                                          #            )
                                          #          )
                                          #          
                                          #          
                                          #          
                                          #          
                                          #          
                                          # )#tabpanel
                                          # 
                                          
                                          
                               )#navbarmenu
                    )#navbarpage
                    
            ),
            
            
            tabItem(tabName = "analysis",
                    
                    fluidRow(   
                      mainPanel(
                        sidebarPanel(
                          #HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                          HTML('<font color="black"><h5><b>This is the stackbar Visualization of the Reviews regarding technology seniors have used in their projects</b></h5></font>'),
                          br(),
                          
                          
                          
                          
                          HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                          
                          tags$a(href = "https://plot.ly/r/",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                          
                        ),
                        
                        
                        
                        
                        box(
                          style="width:800px;",style="height:100px;",
                          #collapsible = TRUE,
                          fluidRow(
                            
                            
                            data2<-data.frame(techlower,posfetch$pos,negfetch$neg),
                            plot_ly(data2,x = ~techlower, y = ~posfetch$pos, type = 'bar', name = 'POS') %>%
                              add_trace(y = ~negfetch$neg, name = 'NEG') %>%
                              layout(yaxis = list(title = 'Count'), xaxis = list(title = ' '),barmode = 'stack')
                            
                            
                          ))
                      ))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    ###################################################################
                    
                    
                    
                    #####################################################################################
            ),#tabItem()
            
            
            tabItem(tabName ="future" ,
                    
                    
                    ############################################################################################3
                    
                    navbarPage(HTML('<font color="white"><h4><b><font-family="Georgia"></b></h4></font>'),
                               
                               navbarMenu(HTML('<font color="black"><h4><b>Different Visualizations</b></h4></font>'),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b></b></h5></font>'),
                                                   
                                                   style="width:1000px;",style="height:100px;",
                                                   fluidRow(   
                                                     mainPanel(
                                                       
                                                       box(
                                                         
                                                         HTML('<font color="black"><center><h5><b>Graph of suggestions technologies taken from senior students!!</b></h5></center></font>'),
                                                         br())
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       #HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                                                       
                                                       #tags$a(href = "https://www.tutorialspoint.com/r/r_pie_charts.htm",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                       
                                                     ))),
                                          
                                          
                                          
                                          
                                          
                                          
                                          tabPanel(HTML('<font color="black"><h5><b> BARCHART</b></h5></font>'),
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       sidebarPanel(
                                                         HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                                         HTML('<font color="black"><h5><b>This is the Barchart Visualization of the suggestion technology graph</b></h5></font>'),
                                                         br(),
                                                         
                                                         
                                                         
                                                         
                                                         HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                                                         
                                                         tags$a(href = "https://plot.ly/r/",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                         
                                                       ),
                                                       
                                                       
                                                       
                                                       
                                                       box(
                                                         style="width:800px;",style="height:100px;",
                                                         #collapsible = TRUE,
                                                         fluidRow(
                                                           
                                                           data3<-data.frame(sTechnologyNames,sFrequency),
                                                           plot_ly( data3,x= ~sTechnologyNames, y= ~sFrequency,type= 'bar',
                                                                    marker =list(color = c('rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           ' rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(255,110,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           ' rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)',
                                                                                           'rgba(0,0,0,1)')))
                                                           %>%
                                                             layout(margin = list(l = 150, r = 20, b = 70, t = 10),
                                                                    yaxis = list(title = paste0(c(rep("&nbsp;", 20),
                                                                                                  "Frequency",
                                                                                                  rep("&nbsp;", 20),
                                                                                                  rep("\n&nbsp;", 3)),
                                                                                                collapse = "")))
                                                           
                                                           
                                                         ))
                                                     ))
                                                   
                                                   
                                                   
                                                   
                                          ),                                           
                                          
                                          
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>PIECHART</b></h5></font>'),
                                                   
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       sidebarPanel(
                                                         HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                                         HTML('<font color="black"><h5><b>This is the Piechart Visualization of the suggestions technology graph</b></h5></font>'),
                                                         br(),
                                                         
                                                         
                                                         
                                                         
                                                         HTML('<font color="black"><h5><b>To learn this</b></h5></font>'),
                                                         
                                                         tags$a(href = "https://www.tutorialspoint.com/r/r_pie_charts.htm",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                         
                                                       ),
                                                       
                                                       box
                                                       (
                                                         fluidRow(
                                                           style="width:800px;",style="height:100px;",
                                                           #collapsible = TRUE,
                                                           
                                                           plotOutput("distplot1")
                                                           
                                                         )
                                                       )
                                                       
                                                     )
                                                   )
                                                   
                                                   
                                                   
                                          ),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>HORIZONTAL BAR</b></h5></font>'),
                                                   fluidRow(   
                                                     mainPanel(
                                                       sidebarPanel(
                                                         #HTML('<font color="black"><h4><b>Description</b></h4></font>'),
                                                         HTML('<font color="black"><h5><b>This is the Horizontal bar Visualization of the suggestions technology graph</b></h5></font>'),
                                                         br(),
                                                         
                                                         
                                                         
                                                         
                                                         HTML('<font color="black"><h5><b>To learn this </b></h5></font>'),
                                                         
                                                         tags$a(href = "https://plot.ly/r/",HTML('<font color="orange"><h4><b>Click here</b></h4></font>'))
                                                         
                                                       ),
                                                       
                                                       box
                                                       (
                                                         fluidRow(
                                                           style="width:800px;",style="height:400px;",
                                                           #collapsible = TRUE,
                                                           data4<-data.frame(sFrequency,sTechnologyNames),
                                                           plot_ly(data4,x = ~sFrequency,y = ~paste0(sTechnologyNames,'  '),type='bar',orientation='h',
                                                                   
                                                                   
                                                                   marker =list(color = c('rgba(0,0,0,1)',
                                                                                          'rgba(255,110,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          ' rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          ' rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)',
                                                                                          'rgba(0,0,0,1)'))) %>%
                                                             
                                                             layout(margin = list(l = 150, r = 20, b = 70, t = 10),
                                                                    yaxis = list(title = paste0(c(rep("&nbsp;", 20),
                                                                                                  "Technology",
                                                                                                  rep("&nbsp;", 20),
                                                                                                  rep("\n&nbsp;", 3)),
                                                                                                collapse = "")))
                                                           
                                                           
                                                           
                                                           
                                                           
                                                         )
                                                       )
                                                       
                                                     )
                                                   )
                                                   
                                                   
                                                   
                                                   
                                                   
                                          )
                                          
                               )#navbarmenu
                    )
                    ############################################################################3
                    
            ),
            
            tabItem(tabName = "help",
                    
                    navbarPage(HTML('<font color="white"><h4><b><font-family="Georgia"></b></h4></font>'),
                               
                               navbarMenu(HTML('<font color="black"><h4><b>Links of Projects</b></h4></font>'),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b></b></h5></font>')
                                                   
                                          ),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>Machine Learning</b></h5></font>'),
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       
                                                       # HTML('<font color="black"><h4><center><b>Description</b></center></h4></font>'),
                                                       HTML('<font color="black"><h5><center><b>Below are the github links of projects for your reference</b></center></h5></font>'),
                                                       
                                                       
                                                       
                                                       tags$a(href ="https://www.linkedin.com/in/pratikshanandeshwar",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       
                                                       tags$a(href = "https://github.com/iamfrank2",HTML('<font color="orange"><h5><center><b>Click Here!</b></center></h5></font>')),
                                                       
                                                       br(), HTML('<font color="black"><h5><center><b>Below are reference links for learning this technology</b></center></h5></font>'),
                                                       
                                                       tags$a(href ="https://www.coursera.org/learn/machine-learning",HTML('<font color="orange"><h5><center><b>Click Here!</b></center></h5></font>')),
                                                       tags$a(href ="https://www.datacamp.com/courses/introduction-to-machine-learning-with-r",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>'))
                                                       
                                                       
                                                       
                                                       
                                                     ))),
                                          
                                          
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>R language</b></h5></font>'),
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       
                                                       #HTML('<font color="black"><h4><center><b>Description</b></center></h4></font>'),
                                                       HTML('<font color="black"><h5><center><b>Below are the github links of projects for your reference</b></center></h5></font>'),
                                                       
                                                       
                                                       
                                                       tags$a(href ="https://www.linkedin.com/in/pratikshanandeshwar",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       
                                                       tags$a(href = "https://in.linkedin.com/in/shivanimailare",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       
                                                       
                                                       br(), HTML('<font color="black"><h5><center><b>Below are reference links for learning this technology</b></center></h5></font>'),
                                                       tags$a(href ="https://www.datacamp.com/courses/free-introduction-to-r",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       tags$a(href ="https://www.udemy.com/r-basics/",HTML('<font color="orange"><h5><center><b>Click Here!</b></center></h5></font>'))
                                                       
                                                       
                                                       
                                                       
                                                       
                                                     ))),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>Web Technology</b></h5></font>'),
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       
                                                       #HTML('<font color="black"><h4><center><b>Description</b></center></h4></font>'),
                                                       HTML('<font color="black"><h5><center><b>Below are the github links of projects for your reference</b></center></h5></font>'),
                                                       
                                                       
                                                       
                                                       tags$a(href = "https://github.com/PoojaGPogul",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       
                                                       tags$a(href = "https://github.com/ShivaniMailare/HostelReview",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       br(), HTML('<font color="black"><h5><center><b>Below are reference links for learning this technology</b></center></h5></font>'),
                                                       tags$a(href ="https://www.w3schools.com/html/default.asp",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       tags$a(href ="https://www.w3schools.com/bootstrap/default.asp",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>'))
                                                       
                                                       
                                                       
                                                     ))),
                                          
                                          tabPanel(HTML('<font color="black"><h5><b>Android</b></h5></font>'),
                                                   
                                                   fluidRow(   
                                                     mainPanel(
                                                       
                                                       # HTML('<font color="black"><h4><center><b>Description</b></center></h4></font>'),
                                                       HTML('<font color="black"><h5><center><b>Below are the github links of projects for your reference</b></center></h5></font>'),
                                                       
                                                       
                                                       
                                                       tags$a(href = "https://www.linkedin.com/in/pratikshanandeshwar",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       
                                                       tags$a(href = "https://github.com/ShivaniMailare/LifeCare",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>')),
                                                       br(), HTML('<font color="black"><h5><center><b>Below are reference links for learning this technology</b></center></h5></font>'),
                                                       tags$a(href ="https://www.coursera.org/specializations/android-app-development",HTML('<font color="orange"><h5><center><b>Click Here!</b></center></h5></font>')),
                                                       tags$a(href ="https://www.udemy.com/androidcourse/",HTML('<font color="orange"><h5><center><b> Click Here!</b></center></h5></font>'))
                                                       
                                                       
                                                       
                                                     )))
                                          
                                          
                                          
                               )#navbarmenu
                    )#navbarpage
            ),
            
            
            
            
            
            
            tabItem(tabName = "raw",
                    
                    fluidRow(   
                      mainPanel(
                        
                        
                        HTML('<font color="black"><h3><b><center>click below</center></b></h3></font>'),br(),
                        
                        
                        
                        tags$a(href ="https://docs.google.com/spreadsheets/d/1lcG43lMWnuvFAzo3Dw4IacMVx00wYdFd3XtqdLpOQCs/edit#gid=1273098590",HTML('<font color="blue"><h4><center> Dataset of project</center></h4></font>')),
                        #HTML('<font color="black"><h3><center>Feedback form of our project</center></h3></font>')
                        tags$a(href ="https://docs.google.com/spreadsheets/d/1kMGyE6aknibS78V-ZY8Kb3gSCuurOV5m1TWxVQ-w4MQ/edit#gid=910840313",HTML('<font color="blue"><h4><center>Feedback form of our project</center></h4></font>'))
                        
                      ))),
            
            
            
            tabItem(tabName = "about",
                    
                    HTML('<font color="orange"><font size="25"><h3><center><b>DEVELOPERS</b></center></h3></font></font>'),br(),
                    HTML('<font color="black"><h4><center><b>Mahajan Priya Shivaji &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mahajanpriya16@gmail.com</b></center></h4></font>'),
                    HTML('<font color="black"><h4><center><b>Gaikwad Ashwini Madhukar &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ashwinigaikwad9679@gmail.com</b></center></h4></font>'),
                    HTML('<font color="black"><h4><center><b>Salunke Swati Pratap &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;swatisalunke1998@gmail.com</b></center></h4></font>')
                    
                    
            )
            
            
            
            
            
            
            
            
            
          )#tabitems
          
        )#fluidrow
        
        
        
      )#dashboardbody
    )#dashboardpage
    
    )#fluidrow
    )#shinyui

