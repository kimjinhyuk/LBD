list.files() #현재 워킹디렉토리 안에 파일 보기
getwd()
setwd("C:/Users/kimji/00_LearningByDoing/data_science/r_code")
install.packages("vars")
install.packages("vctrs")
update.packages('vtrts')
library(KoNLP)
library(vars)
library(vtrts)
useNIADic()
mergeUserDic(data.frame(c("인공사"),c("ncn")))
mergeUserDic(data.frame(c("뽐뿌"),c("ncn")))
mergeUserDic(data.frame(c("가십"),c("ncn")))
mergeUserDic(data.frame(c("인성문제"),c("ncn")))



text1 <- readLines('text02.txt')

text2 <- extractNoun(text1)
text3 <- unlist(text2)
#전처리
text4 <-gsub("ㅎ","",text3)
text4 <-gsub("ㅋㅋ","",text3)
text4 <-gsub("^^","",text3)


text5 <- text4[nchar(text4) < 5]
text5 <- text5[nchar(text5) > 1]

text6 <- sort(table(text5), decreasing = T)
text7 <- head(text6, 300)

install.packages("wordcloud2")
library(wordcloud2)

wordcloud2(text7, size=3)
