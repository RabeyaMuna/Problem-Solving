class Solution:
    def reverse(self, x: int) -> int:
        val=0
       
       
        if x<0:
            sign=1
            x=(-1)*x
        else:
            sign=0

        x=str(x)[::-1]
        x=int(x)

        if int(x) > 2**31-1 or (x) < -2**31: 
            return 0


        if sign==1:
            x=int(x) * (-1)

        return x
            
            
        
        
        
