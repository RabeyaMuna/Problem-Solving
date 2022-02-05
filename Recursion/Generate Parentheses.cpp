#include <bits/stdc++.h>

using namespace std;

void checkParenthesis(vector <string> s,int n,int start,int last,string cursor){
    if(cursor.size()==(2*n)&& start==last){
        s.push_back(cursor);
        cout<<cursor<<" ";
        return;
    }
    if(start<n){
        checkParenthesis(s,n,start+1,last,cursor+'(');
        //cout<<"start :"<<start<<"  End :"<<last<<" string  :"<<cursor<<endl;
    }
    if(last<start){
        checkParenthesis(s,n,start,last+1,cursor+')');
        //cout<<"start :"<<start<<"  End :"<<last<<" string  :"<<cursor<<endl;
    }

}
int main()
{
    int n;
    string s1="";
    cin>>n;
    vector <string> s;
    checkParenthesis(s,n,0,0,s1);
    return 0;
}
