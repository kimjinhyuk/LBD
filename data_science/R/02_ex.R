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
exam %>% filter(class == 1 | class==3 | class == 5)
exam %>% filter (class %in% c(1,3,5))



exam %>%  select(class, math)
#과학 점수를 제외하고 추출
exam %>% select(-science)
#수학 점수가 60점 이상인 학생을의 id와 수학점수만 추출
exam %>% 
  filter(math >= 60) %>% 
  select(id, math)
#1반 학생들의 id와 영어점수

#select, filter를 함께 사용할때 selec으로 추출된 데이터에 대해서만 filter를 적용
exam %>% 
  filter(class == 1) %>% 
  select(id, english) 

exam %>%  arrange(math)
#수학점수 내림차순 정렬
exam %>% arrange(desc(math))

#반별로 먼저 정렬 후에 수학점수 내림차순으로 정렬
exam %>%  arrange(class, desc(math))

#학생별 평균점수 데이터를 추가
exam %>%  mutate(avg = (math + english + science)/3)

#mean 함수( 벡터 데이터를 연산 )
#데이터프레임에서 연산하고 싶을때 mean 을 사용x

exam <- exam %>%  mutate(avg = (math + english + science)/3)
exam

#평균 점수가 60점 이상이면 pass 아니면 fail 

exam <- exam %>% mutate(pass = ifelse(avg >= 60 , "pass", "fail"))


table(exam$pass)
# 평균 점수가 90점 이상이면 A, 70~89면 B, 나머지 C

exam <- exam %>% mutate(grade = ifelse(avg >= 90, "A", ifelse(avg >= 70, "B", "C")))
table(exam$grade)
