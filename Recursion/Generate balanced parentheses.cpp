#include <bits/stdc++.h>

using namespace std;
int c=0;
void checkParenthesis(int n,int start,int last,string cursor){
    if(cursor.size()==(2*n)&& start==last){
            ++c;
        cout<<cursor<<" "<<" ";

        return;
    }
    if(start<n){
        checkParenthesis(n,start+1,last,cursor+'(');
    }
    if(last<start){
        checkParenthesis(n,start,last+1,cursor+')');

    }

}
int main()
{
    int n;
    string s1="";
    cin>>n;
    vector <string> s;
    checkParenthesis(n,0,0,s1);
    cout<<c<<" ";
    return 0;
}
