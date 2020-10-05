# Classification Analysis

# 사과품종을 예측하는 분류분석 모델 만들기

apple <- read.csv("apple.csv", stringsAsFactors = T)
apple


# 데이터 살펴보기
summary(apple)
str(apple)

#품종별 무게분포
boxplot(weight ~ model, data = apple)

#품종별 당도분포
boxplot(sugar ~ model, data = apple)

#품종별 산도분포
boxplot(acid ~ model, data = apple)

#색상별 사과 품종 갯수
library(ggplot2)
ggplot(data = apple, aes(x = color, fill = model)) + geom_bar()

# kappa 계수 0.6~1 

apple

# train/test 나누기
install.packages("caret")
library(caret)
apple_index <- createDataPartition(apple$model, p = 0.8, list = F)
apple_index

apple_train <- apple[apple_index, ]
apple_test <- apple[-apple_index, ] #apple_index를 제외한 나머지

nrow(apple_train)
nrow(apple_test)

#분류 분석 실행
install.packages("rpart")
library(rpart)
apple_model <- rpart(model~., data = apple_train, control = rpart.control(minsplit = 2) )#모든 요인에 따른 모델 예측
apple_model

# 분류 모델 시각화
install.packages("rpart.plot")
library(rpart.plot)
rpart.plot(apple_model)

# 예측하기
apple_predict <- predict(apple_model, apple_test, type = "class")

# 평가하기 (kappa 지수)
apple_test

actual <- apple_test$model

confusionMatrix(actual, apple_predict, mode = "everything")

install.packages("e1071")
