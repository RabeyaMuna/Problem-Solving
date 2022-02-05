#include <bits/stdc++.h>

using namespace std;

bool palindrom(string s,int i,int n){
    if(i>n){
        return true;
    }
if(s[i]!=s[n]){
    return false;
}
return palindrom(s,i+1,n-1);

}
int main()
{
    string s;
    cin>>s;
    int len=s.size();
    if(palindrom(s,0,len-1)==true){
        cout<<"Palindrom";
    }
    else{
        cout<<"Not Palindrom";
    }
        return 0;
}
