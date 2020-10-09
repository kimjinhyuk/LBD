# from typing import List

# class Solution:
#     def findNumbers(self, nums: List[int]) -> int:
#       sqrt_list = [pow(num, 2) for num in nums] 
#       answer = sorted(sqrt_list)
#       return answer

class Solution:
    def sortedSquares(self, A: List[int]) -> List[int]:
        B = []
        for number in A:
            B.append(number * number)
        return sorted(B)