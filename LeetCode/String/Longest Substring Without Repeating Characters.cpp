class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        
       unordered_set <char> v;
        int j=0;
        int maxnum=0;
        
        for(int i=0;i<s.size();++i){
            
            
                 
            while(v.count(s[i])>0){
                v.erase(s[j++]);
            }
            
            v.insert(s[i]);
            int n=v.size(); 
            maxnum=max (maxnum, n);
        
        }
        return maxnum;
        
        
    }
};
