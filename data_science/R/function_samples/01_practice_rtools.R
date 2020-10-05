# # ! 함수 정의 
# def fac(n):
#   if n == 0:
#     return 1
# if n == 1 :
#     return 1
# else:
#     return n * fac(n-1)    
# # 4! 계산
# print(fac(4))
# 

install.packages("gtools")
library(gtools)

nrow(permutations(3,2,1:3))
nrow(combinations(3,2,1:3))
