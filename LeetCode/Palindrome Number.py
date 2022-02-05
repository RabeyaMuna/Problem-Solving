class Solution:
    def isPalindrome(self, x: int) -> bool:
        
        
        a1=str(x)
        a2= str(x)[::-1]
        if(a1==a2):
            return True
        if a1!=a2 or x>-2**31 or x> 2**31 -1:
            return False
        
        
