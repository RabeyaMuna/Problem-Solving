def Check_prefix(s1,s2):
    res=""
    n=len(s1)
    i=0
    while i < n:
        if (s1[i]!=s2[i]):
            break
        res+=s1[i]
        i+=1
        
    return res
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        n=len(strs)
        strs.sort()
        pre=strs[0]
        for i in range(1,n):
            pre= Check_prefix(pre,strs[i])
        return pre
