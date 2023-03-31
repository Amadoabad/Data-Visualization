library("ggplot2")
df_fuel_types <- read.csv("E:/Amado/Career/Courses/365 Statistics Course/Data vis/Pie Chart/pie_chart_data.csv",
                          header = TRUE,
                          sep = ',')
pie_chart <- ggplot(df_fuel_types,
                    aes(x = "",
                        y = Number.of.Cars,
                        fill = Engine.Fuel.Type)) +
                    geom_bar(stat = "identity",
                             width = 1) +
                    coord_polar("y")
  
percentages <- paste0(round(df_fuel_types$Number.of.Cars/sum(df_fuel_types$Number.of.Cars)*100,1), "%")
pie_chart <- pie_chart + geom_text(aes(label = percentages),
                                   position = position_stack(vjust = 0.5))
pie_chart <- pie_chart + labs(x = NULL,
                              y = NULL,
                              fill = NULL,
                              title = "Cars by Engine Fuel Type")

pie_chart <- pie_chart + theme_classic() + theme(axis.line = element_blank(),
                                    axis.text = element_blank(),
                                    plot.title = element_text(hjust= 0.5))

pie_chart

