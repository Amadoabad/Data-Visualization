library("ggplot2")
library("dplyr")
library("reshape2")
data <- read.csv("E:/Amado/Career/Courses/365 Statistics Course/Data vis/Stacked Area Chart/stacked_area_chart_data.csv",
                 header = TRUE,
                 sep = ',')
temp <- select(data, -matches("Other"))
new_data <- melt(temp, id.vars = "Year")
area_chart <- ggplot(new_data,
                     aes(x = Year,
                         y = value,
                         fill = variable)) +
                geom_area() +
                scale_fill_manual(values = c("#ef2026",
                                             "#7e2987",
                                             "#011638")) +
                theme_classic() +
                theme(legend.justification = c(0.01, 1),
                      legend.position = c(0.01, 1)) +
                labs(fill = "Engine Type") +
                ylab("Number of Cars") +
                ggtitle("Popularity of Engine Fuel Types (1962 - 2016)") +
                theme(axis.text.x = element_text(angle = 90,
                                                 vjust = 0.5)) +
                      scale_x_continuous(breaks = new_data$Year)
                
area_chart

