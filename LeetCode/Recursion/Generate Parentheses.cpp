class Solution {
public:
  void  checkParenthesis(vector <string> &s,int n,int start,int last,string cursor){
         if(cursor.size()==(2*n)&& start==last){
        s.push_back(cursor);
        //cout<<cursor<<" ";
        return;
    }
    if(start<n){
        checkParenthesis(s,n,start+1,last,cursor+'(');
    }
    if(last<start){
        checkParenthesis(s,n,start,last+1,cursor+')');
    }

  }
    
    vector<string> generateParenthesis(int n) {
         vector <string> s;
        string s1="";
    checkParenthesis(s,n,0,0,s1);
        return s;
    }
    
};
