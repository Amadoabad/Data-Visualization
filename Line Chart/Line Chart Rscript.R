library("ggplot2")
library('reshape2')
library('plyr')
data <- read.csv("E:/Amado/Career/Courses/365 Statistics Course/Data vis/Line Chart/line_chart_data.csv",
                 header = TRUE,
                 sep = ',')
data$Date <- as.Date(data$Date,
                     format = "%m/%d/%Y")
data_melt <- melt(data, id = "Date")
data_melt <- rename(data_melt, 
                    c("value" = "Returns",
                      "variable" = "Index"))
min <- as.Date("2008-7-1")
max <- as.Date("2008-12-31")

line_chart <- ggplot(data_melt, 
                     aes(x = Date,
                         y = Returns,
                         colour = Index,
                         group = Index)) +
                geom_line(aes(color = Index),
                          size = 1) +
                scale_color_manual(values = c("navyblue", "red4")) +
                theme_minimal() + 
                ggtitle("S&P vs FTSE Returns (H2 2008)") +
                scale_x_date(limits = c(min, max)) +
                theme(legend.justification = c(0.01, 1),
                      legend.position = c(0.01, 1))


line_chart

