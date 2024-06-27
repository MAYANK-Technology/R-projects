# Create the first data frame df1 with columns 'id' and 'product'
df1 = data.frame(id = c(1:6), product = c(rep("Oven", 4), rep("TV", 2)))
df1  # Display the first data frame

# Create the second data frame df2 with columns 'id' and 'state'
df2 = data.frame(id = c(2, 3, 6, 7), state = c(rep("Texas", 2), rep("California", 2)))
df2  # Display the second data frame

# Perform an inner join on df1 and df2 based on the 'id' column
df <- merge(df1, df2, by = "id")
df  # Display the result of the inner join

# Perform a full outer join on df1 and df2 based on the 'id' column
df <- merge(df1, df2, by = "id", all = TRUE)
df  # Display the result of the outer join

# Create a vector 'age' with values from 11 to 17
age <- c(11:17)

# Combine the 'df' data frame and 'age' vector column-wise
df <- cbind(df, age)
df  # Display the data frame after column-wise combination

# Create a new row 'x' with values matching the columns of 'df'
x <- c(8, "TV", "Texas", 18)

# Add the new row 'x' to the data frame 'df' row-wise
df <- rbind(df, x)
df  # Display the data frame after row-wise combination

# Perform a left outer join on df1 and df2 based on the 'id' column
df <- merge(x = df1, y = df2, by = "id", all.x = TRUE)
df  # Display the result of the left outer join

# Perform a right outer join on df1 and df2 based on the 'id' column
df <- merge(x = df1, y = df2, by = "id", all.y = TRUE)
df  # Display the result of the right outer join

# Load the built-in 'iris' dataset
iris <- datasets::iris
View(iris)  # Open the 'iris' dataset in a new window for viewing

# Access the 'Sepal.Length' column of the 'iris' dataset
iris$Sepal.Length

# Calculate the mean of the 'Sepal.Length' column
mean(iris$Sepal.Length)

# Apply the 'mean' function to each column from 1 to 4 of the 'iris' dataset using apply
z <- apply(iris[, 1:4], 2, mean)
z  # Display the result

# Apply the 'mean' function to each column from 1 to 4 of the 'iris' dataset using lapply (returns a list)
z <- lapply(iris[, 1:4], mean)
z  # Display the result
class(z)  # Show the class of 'z'

# Apply the 'mean' function to each column from 1 to 4 of the 'iris' dataset using sapply (returns a vector)
z <- sapply(iris[, 1:4], mean)
z  # Display the result
class(z)  # Show the class of 'z'

# Attach the 'iris' dataset to the R search path
attach(iris)

# Calculate the mean of the 'Sepal.Length' column using the attached dataset
mean(Sepal.Length)
# Calculate the mean of the 'Petal.Length' column using the attached dataset
mean(Petal.Length)

# Detach the 'iris' dataset from the R search path
detach(iris)

# Trying to calculate the mean of 'Sepal.Length' after detaching will throw an error
mean(Sepal.Length)  # This will throw an error since 'Sepal.Length' is no longer found

# Reattach the 'iris' dataset to the R search path
attach(iris)

# Apply the 'mean' function to 'Sepal.Length' grouped by 'Species' using tapply
z <- tapply(Sepal.Length, Species, mean)
z  # Display the result

# Create a bar plot of the mean 'Sepal.Length' for each species
barplot(z,
        main = 'Sepal length of Iris',
        xlab = 'sepal length', horiz = TRUE)

# Create a box plot for the 'Sepal.Width' column
boxplot(Sepal.Width,
        main = 'Sepal width of Iris',
        xlab = 'sepal width', horiz = FALSE)

# Create box plots for multiple features (columns 1 to 4 of the 'iris' dataset)
boxplot(iris[, 1:4],
        main = 'box plots of multiple features',
        xlab = 'plots', horiz = FALSE)

# Create a scatter plot of 'Petal.Length' vs 'Petal.Width'
plot(Petal.Length, Petal.Width,
     main = "Scatterplot Example",
     xlab = "Petal length",
     ylab = "Petal width", pch = 19)

# Create a histogram for the 'Sepal.Length' column
hist(Sepal.Length,
     main = "Histogram Example",
     xlab = "sepal length")
