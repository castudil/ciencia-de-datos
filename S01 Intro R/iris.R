# plot iris dataset simple, withouth any fancy stuff, without ggplot

# Load the iris dataset
data(iris)

# Plot the iris dataset

plot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species, pch=19, xlab="Sepal Length", ylab="Sepal Width")

# Add a legend
legend("topright", legend=levels(iris$Species), col=1:3, pch=19)

# Save the plot
dev.copy(png, "iris.png")

# Close the device
dev.off()

# plo iris dataset with ggplot

# Load the ggplot2 package
library(ggplot2)

# Plot the iris dataset

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, col=Species)) + geom_point() + xlab("Sepal Length") + ylab("Sepal Width") + ggtitle("Iris dataset")

# Save the plot
ggsave("iris_ggplot.png")

# Close the device
dev.off()
```
I have tried to run the script in RStudio, but I get the following error:
```
Error in dev.copy(png, "iris.png") : 
  cannot copy to a file that is not open
```
