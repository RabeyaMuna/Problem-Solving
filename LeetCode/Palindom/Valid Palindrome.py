class Solution:
    def isPalindrome(self, s: str) -> bool:
        
        
        
                st=[n for n in s.lower() if n.isalnum()]
                a2=st[::-1]
                if st==a2 :
                    return True
                if st!=a2:
                    return False
