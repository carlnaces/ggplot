library(ggplot2)
str(mpg)

# basic plot ggplot1
qplot(displ, hwy, data = mpg)
# dev.copy(png,"ggplot1.png", width=480, height=480)
# dev.off()

# basic plot with color from factor but character type ggplot2
qplot(displ, hwy, data = mpg, color = drv)
# dev.copy(png,"ggplot2.png", width=480, height=480)
# dev.off()

# basic plot adding statistic summary ggplot3
# note: blue is "smooth", gray is 95% confidence
qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))
# dev.copy(png,"ggplot3.png", width=480, height=480)
# dev.off()

# basic histogram with fill from factor but char type ggplot4
qplot(hwy, data = mpg, fill = drv)
dev.copy(png,"ggplot4.png", width=480, height=480)
dev.off()

#FACETS example
# syntax leftdata ~ rightdata
#scatterplot facet ggplot5
qplot(displ, hwy, data = mpg, facets = .~drv)
# dev.copy(png,"ggplot5.png", width=480, height=480)
# dev.off()

#histogram facet ggplot6
qplot(hwy, data = mpg, facet = drv~., binwidth = 2)
# dev.copy(png,"ggplot6.png", width=480, height=480)
# dev.off()

#histogram of a log ggplot7
qplot(log(hwy), data = mpg)
# dev.copy(png,"ggplot7.png", width=480, height=480)
# dev.off()

#histogram of a log with fill from factor but char type ggplot8
qplot(log(hwy), data = mpg, fill = drv)
# dev.copy(png,"ggplot8.png", width=480, height=480)
# dev.off()

#density smooth color with factor but char type ggplot9
qplot(log(hwy), data = mpg, geom = "density", color = drv)
# dev.copy(png,"ggplot9.png", width=480, height=480)
# dev.off()

#scatter plot of log of two var geom from char type var ggplot10
qplot(log(hwy), log(displ), data = mpg, shape = drv, color = drv)
# dev.copy(png,"ggplot10.png", width=480, height=480)
# dev.off()

#scatter plot of log of two var plus linear regression model ggplot11
qplot(log(hwy), log(displ), data = mpg, shape = drv, color = drv) + geom_smooth(method = "lm")
# dev.copy(png,"ggplot11.png", width=480, height=480)
# dev.off()

#scatter plot of log of two var plus linear regression model 
# separated by facets ggplot12
qplot(log(hwy), log(displ), data = mpg, shape = drv, color = drv, facets = .~drv) + geom_smooth(method = "lm")
# dev.copy(png,"ggplot12.png", width=480, height=480)
# dev.off()

#scatterplot piece by piece addition ggplot13
g <- qplot(log(hwy), log(displ), data = mpg, shape = drv, color = drv)
g + geom_point(alpha = 1/3)+ facet_wrap( .~drv, nrow = 1, ncol = 3)+ geom_smooth(method = "lm", se = FALSE, col = "steelblue")+ theme_bw(base_family = "Avenir", base_size = 10)+ xlab("log (hwy)")+ ylab("log (displ)")
# dev.copy(png,"ggplot13.png", width=480, height=480)
# dev.off()















