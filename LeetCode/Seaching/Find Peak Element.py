class Solution:
    def findPeakElement(self, nums: List[int]) -> int:
        
        maxnum=nums[0]
        index=0
        
        for i in range(1,len(nums)):
            
            if nums[i] > maxnum:
                
                maxnum=nums[i]
                index=i 
                
        return index
        
