# 연관성 분석 (association analysis)
# 맥주를 샀을때 땅콩을 살 확률
# 연관성 관련 지표 : {조건} => {결과}
# "와인과 소금을 사면 치즈를 산다" : {와인, 소금} => {치즈}
# "치즈를 사면 와인과 소금을 산다" : {치즈} => {와인, 소금}
# 3가지 평가 지표 : 지지도(support), 신뢰도(confidence), 향상도(lift)
# 지지도(support) : 조건과 결과항목을 포함하는 거래수 / 전체거래수
# 신뢰도(confidence) : 조건과 결과항목을 포함하는 거래수 / 조건 항목을 포함하는 거래수   - 모든 거래에서 발생하는 거래
# 향상도(lift) : 연관성 규칙의 지지도 / 조건의 지지도 (빈도수)  -  향샹도가 1 -> 우연

# Apriori Algorithm

# install.packages("arules")


library(arules)

list.files()
basket <- readLines("basket.csv")
basket

# Transaction으로 변환하기 위해 ',' 기준으로 잘라냄
basket_trans <- strsplit(basket, ",")
basket_trans

# Transaction 형태로 변환
basket_trans <- as(basket_trans, "transactions")
basket_trans

inspect(basket_trans)

#연관성 규칙 도출
basket_apriori <- apriori(basket_trans, parameter = list(support = 0.1, confidence = 0.8))
basket_apriori

inspect(basket_apriori)


#향상도가 1.2 이상인 데이터 확인
inspect(subset(basket_apriori, subset = lift > 1.2))

#조건에 삼겹살이 포함된 연관성 규칙
inspect(subset(basket_apriori, subset = lhs %in%  c("삼겹살")))

#조건에 삼겹살이나 생수가 포함된 연관성 규칙 (or)
inspect(subset(basket_apriori, subset = lhs %in%  c("삼겹살", "생수")))

#조건에 삼겹살이나 생수가 포함된 연관성 규칙 (and)
inspect(subset(basket_apriori, subset = lhs %ain%  c("삼겹살", "생수")))


