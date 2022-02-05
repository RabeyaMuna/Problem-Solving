#include <bits/stdc++.h>
using namespace std;
void strings_form(int K, char s[], int n)
{
    if(n==K)
    {
        cout<<s<<endl;
        return;
    }
    if(s[n-1]=='1')
    {
        s[n]='0';
        strings_form(K,s,n+1);
    }
    if(s[n-1]=='0')
    {
        s[n]='0';
        strings_form(K,s,n+1);
        s[n]='1';
        strings_form(K,s,n+1) ;
    }
}

void print_strings(int K)
{
    if(K<=0)
    {
        return;
    }
    char s[K];
    s[0]='0' ;
    strings_form(K,s,1) ;
    s[0]='1';
    strings_form(K,s,1);
}

int main()
{
    int N;
    cin>>N;
    print_strings(N);
    return 0;
}
