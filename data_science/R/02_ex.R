list.files()
getwd()
setwd("C:/Users/kimji/00_LearningByDoing/data_science/R")
exam <- read.csv("csv_exam.csv")
exam
# 1반 학생들 추출

install.packages("dplyr")
library(dplyr)

#파이프 연산자 ctrl+shift+m
exam %>% filter(class == 1)

#수학 점수가 50점 이상인 학생 추출

exam %>% filter(math >= 50)

#수학점수와 영어점수가 70점 이상인 학생 추출
exam %>% filter(math >= 70, english >= 70 )
exam %>% filter(math >= 70 & english >= 70 )
exam %>% 
  filter(math >= 70) %>%  
  filter(english >= 70)

#1반 이거나, 3반 이거나, 5반인 학생 추출 (or)
#교집합연산
exam %>%  filter(class == 1 | class==3 | class == 5)
exam %>% filter (class %in% c(1,3,5))


