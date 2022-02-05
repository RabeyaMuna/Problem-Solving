class Solution:
    def reverseWords(self, s: str) -> str:
        L=s.split()
        words=list(L)
        N=L[::-1]
        D=" ".join(N)
        return D
