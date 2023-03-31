library(ggplot2)
data <- read.csv("E:/Amado/Career/Courses/365 Statistics Course/Data vis/Histogram/histogram_data.csv",
         header = TRUE,
         sep = ',')

hist <- ggplot(data,
               aes(x = Price)) +
        geom_histogram(bins = 8,
                       fill = "#108A99",
                       color = "white") +
        theme_classic() +
        ggtitle("Distribution of Real Estate Prices") +
        xlab("Price in (000' $") +
        ylab("# Properties") +
        theme(plot.title = element_text(size = 16,
                                        face = "bold"))
hist

