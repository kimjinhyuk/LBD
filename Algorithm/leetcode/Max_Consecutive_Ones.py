class Solution(object):
    def findMaxConsecutiveOnes(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        return len(max("".join(map(str, nums)).split("0")))

# sonlutionInstance = Solution()
# findMaxConsecutiveOnes([0, 1, 1, 0, 0, 1, 1, 1, 0])

