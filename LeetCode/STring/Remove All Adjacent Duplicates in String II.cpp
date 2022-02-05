class Solution {
public:
    string removeDuplicates(string s, int k) {
        stack <pair<char,int>> a;
        
        for( char p:s){
            if (a.empty()){
                a.push({p,1});
            }
            
            else if (a.top().first==p){
                a.top().second++;
            }
            
            else{
                a.push({p,1});
            }
            
            if (a.top().second==k){
                
                a.pop() ;
            }
        }
        
        string ans="";
        
        while(!(a.empty() )){
            
            while(a.top().second--)

            ans+=a.top().first;
            a.pop();
        
        }
        reverse(ans.begin(),ans.end());
        return ans;
}
};
