x <- c(1,2,3,4,5)
x
class(x)

#rm(y)


#정수형 출력 
x<- c(1L, 2L, 3L, 4L, 5L)
x
class(x)

x <- 1+0i
x
class(x)

x<- c("A", "B", "C", "가", "나", "다")
x
class(x)

x <- c("2021-03-11")
x
class(x)
x <- as.Date("2021-03-11")
x
class(x)

y <- c("2020-04-05")
class(y)
y <- as.Date(y)

x-y

x <- TRUE
y <- FALSE
class(x); class(y)

# NA(Not Available) 값이 측정되지 않아 사용할 수 없음
# NaN(Not a Number) 연산 불가능, 부적절한 값

x <- c(1,2,3,4,5,"A")
x
class(x)

x <- c(1,2,"a", 4)
x[2]
x[3]
x[c(2,3)]
x[2:3]
x[-1]
x[x=='a']

x <- factor(c("M", "F", "F", "M"))
x
class(x)

levels(x) #범주확인
levels(x) <- c("A", "B")
x[1]
x[1:3]
x[2:3]
x <- matrix(1:20, 5, 4)
x

class(x)
x[1,2]
x[2:4, ]
x[2:4, 2]
x[-2,]

#열을 먼저 채우기
matrix(1:20, 5, 4, byrow = TRUE)

#array(데이터, c(행개수, 열개수, 차원))

x<-array(1:2, c(5,4,2))
x

#x[행, 열, 차원]

x[1,2,2]

x <- list(c(1:5), c(1:50)) #인덱스 1은 1부터 5까지 데이터 값을 가짐
x

x <- list(flower = "rose", color = c("red", "white"))
x

x<- list(c(1:5), c(1:50))
x

x[[1]]

x <- list(flower = "rose", color = c("red", 'white'))
x

x[[1]]
x$flower


#data.frame(열이름 = c(데이터1, 데이터2, ...), 열이름 = c(데이터1, 데이터2, ...), ...)
#행과 열을 각각 네개씩 갖는 데이터 프레임

df <- data.frame(name = c('kim', 'lee', 'choi', 'park'), age =c(32,25,18,39), height = c(170,175,178,190), weight = c(63,73,77,80))
df
class(df)

name <- c('kim', 'lee', 'choi', 'park')
age <- c(32,25,18,39)
height <- c(170,175,178,190)
weight <- c(63,73,77,80)

df <- data.frame(name,age,height,weight)
df

df[,2, drop = FALSE]
df[c(1,3), c(1,2)]

rownames(df) <- c("one", "two", "three", "four")
df
df[c("one", "three"), ]
df[, "age", drop = FALSE]


df[c("one", "three"), c("name","height")]

df$height

x<- c(1,2,3,4)
x

min(x)
max(x)
a <- mean(x)
a
user_f <- function(x){
  return (x*2)
}


user_f(c(1:3))


#패키지 설치
install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)


summarise(iris, avg = mean(Sepal.Length))