#include <bits/stdc++.h>

using namespace std;
void pass(string s,int n,int i,int c1,int c2,int c3){
if(i==(n-1)){
    if(c1>0 && c2>0 && c3>0){
        cout<<"Password is valid"<<endl;
    }
    else{
        cout<<"Password is Invalid.Try it with an Lower,an upper and one digit with 8 charaecter length"<<endl;
        cin>>s;
        pass( s,8,0,0,0,0);

    }
    return;
}
if(int(s[i])>=97 && int(s[i])<=122){
    c1++;
}
if(int(s[i])>=65 && int(s[i])<=90){
    c2++;

}
if(int(s[i])>=48 && int(s[i])<=57){
    c3++;

}
pass( s,n,i+1,c1,c2,c3);
}
int main()
{
    int n=8;
    int c1,c2,c3=0;
    string s;
    cin>>s;

    while(s.size()!=n){
        cin>>s;
    }
    pass(s,n,0,c1,c2,c3);

    return 0;
}
