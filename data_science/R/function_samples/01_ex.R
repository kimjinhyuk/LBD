x <- jitter(seq(1,10))
x
mean(x)


x <- c("A","B","C","D","B","C","D","C","D","D")
table(x)

sort(table(x), decr=T)[1]

names(sort(table(x), decr=T))[1]


BMI <- read.table(url("http://jupiter.hallym.ac.kr/ftpdata/data/bmi.txt"),
                  col.names = c('height','weight','year','religion','gender','marriage'))
head(BMI)

