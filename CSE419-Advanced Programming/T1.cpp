#include <bits/stdc++.h>
using namespace std;

long long int n;
vector <char> v;

int main(){

    int a=0;

    cin>>n;

    while(n!=0){
        a=n%16;
        if(a<10){
            int r=a+48;
            char letter = static_cast<char>(r);
            v.push_back(letter);
        }
        else{
            int r1=a+55;
            char letter = static_cast<char>(r1);
            v.push_back(letter);

        }
        n=n/16;

    }
    for(int i =v.size()-1;i>=0;i--){
        std::cout<<v[i]<<"";
    }


return 0;
}
