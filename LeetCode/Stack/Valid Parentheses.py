class Solution:
    def isValid(self, s: str) -> bool:
        
        List=["()","{}","[]" ]
        if len(s)==0:
            return False
        stack=[]
        
        for i in s:
            if i=='(' or i=='{' or i=='[' :
                     stack.append(i)
            if i==')' or i=='}' or i==']' :
                if stack:
                    b=stack.pop()
                    if b+i not in List:
                         return False
                else:
                    return False
            
            
        if not stack:
            return True
        else:
            return False
            
              
              
              
            
        
