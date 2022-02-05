class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
         
        firstpos=[]
        rest=[]
        for i in range(0,len(nums)):
            if nums[i]==target:
                firstpos.append(i)
        
        if len(firstpos) == 1:
            rest=[firstpos[0],firstpos[0]]
         
        elif len(firstpos)==0:
            rest=[-1,-1]
        
        else:
            rest=[firstpos[0],firstpos[-1]]
        
        return rest
            
