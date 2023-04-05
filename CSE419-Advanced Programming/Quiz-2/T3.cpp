
#include <bits/stdc++.h>

using namespace std;

int main(){
double n;
cin>>n;
double left=0;
double right=n;
//int it=log2(n*pow(10,6))+1;
//cout<<it<<endl;
for(int i=1;i<=99;++i){
    double mid=(left+right)/2;
    if((mid*mid)>n){
            right=mid;

    }
    else{
        left=mid;
    }
}
cout<<setprecision(6)<<fixed<<left<<endl;
return 0;
}
