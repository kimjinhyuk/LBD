#install KoNLP Package
install.packages("multilinguer")
library(multilinguer)
install_jdk()
install.packages(c('stringr'), type = "binary")
install.packages("remotes")
remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))
library(KoNLP) #최종적으로 "KoNLP" 패키지를 불러옵니다


v1 <- "여러분 안녕하세요. 만나서 반갑습니다. R 수업은 재미있나요 ?? 오늘은 텍스트 마이닝 시간입니다. 즐거운 R 시간 되십시다요"


extractNoun(v1)
