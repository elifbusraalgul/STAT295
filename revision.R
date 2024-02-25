#REVISION
1+1
1:100
2.35:50
1+5
3*5
100/5
1:6
mydice <- 1:6
mydice
aaa <- 555
AAA <- 666
aaa
AAA
aaa <- 777
aaa
ls()
mydice
mydice - 1
mydice * mydice
mydice %*% mydice
mydice %o% mydice
dim(mydice) <- c(2,3)
mydice
dim(mydice) <- c(1, 2, 3)
mydice
m <- matrix(mydice, nrow = 2)
m
m <- matrix(mydice, nrow = 2, byrow = TRUE)
m
myarray <- array(c(1:12), dim = c(2, 2, 3))
myarray
now <- Sys.time()
now
class(now)
unclass(now)
mil <- 1000000
now - mil
data(iris)
?iris
head(iris)
class(iris)
class(iris$Sepal.Length)
class(iris$Species)
str(iris)
summary(iris)
iris$Sepal.Length

#Indexing
iris[1,]
iris[,2]
iris[,"Species"]
table(iris$Species)

#Logical Indexing
LogicIndex <- iris[, "Petal.Length"] > 5.5
LogicIndex
iris[LogicIndex, ]

#Summary Statistics
mean(iris$Sepal.Length)
sd(iris$Sepal.Length)

#Functions
MeanAndStd <- function(x) {
  c(mean=mean(x), std=sd(x))
}
MeanAndStd(iris$Sepal.Length)
Stats <- aggregate(Sepal.Length ~ Species, data=iris,
                   FUN=MeanAndStd)
Stats

#Visualization
plot(iris$Sepal.Length,
     col=as.numeric(iris$Species),
     ylab="Sepal Length")
legend('topleft', legend = levels(iris$Species), pch = 1:3)
