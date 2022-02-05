#include <bits/stdc++.h>

using namespace std;
int arr[105];
bool u[105];
void comb(int i,int n,int k){
if(i==k+1){
    for(int j=1;j<=k;++j){
        cout<<arr[j]<<" ";

    }
    cout<<endl;
    return;
}
for(int j=1;j<=n;++j){
    if(!u[j]){
        arr[i]=j;
        u[j]=true;
        comb(i+1,n,k);
        u[j]=false;
    }
}
}

int main()
{
    int n,k;
    cin>>n>>k;
    comb(1,n,k);
    return 0;
}
