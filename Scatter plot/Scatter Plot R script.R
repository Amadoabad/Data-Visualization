library(ggplot2)
library(wesanderson)

data <- read.csv("E:/Amado/Career/Courses/365 Statistics Course/Data vis/Scatter plot/scatter_data.csv",
                 header= TRUE,
                 sep = ',')

scatter <- ggplot(data, aes(x=Area..ft.. , y = Price)) +
            geom_point(aes(color = factor(Building.Type),
                           size = 2),
                       alpha = 0.4) +
            guides(size = 'none') + 
            labs(color = "Building Type") + 
            scale_color_manual(values = wes_palette(name = "Darjeeling1", n =5)) +
            theme_classic()+
            theme(legend.justification = c(0.01, 1),
                  legend.position = c(0.01,1 ))+
            ggtitle("Relationship between Area and Price of Real Estate")+
            ylab("Price (000' of $)") +
            xlab("Area sq. ft")
            
scatter


