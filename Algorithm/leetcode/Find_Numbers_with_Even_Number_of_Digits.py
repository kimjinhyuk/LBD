from typing import List

class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        
      str_num = map(str, nums)
      count = 0
      for s in str_num:
         if len(s) % 2 == 0:
            count += 1
      return count
ob1 = Solution()
