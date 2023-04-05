#include <bits/stdc++.h>

using namespace std;

int mem[105];
int n;
int length(int i,int a[]){

    if(mem[i]!=-1){
        return mem[i];
    }
    int r=0;
    for(int j=i+1;j<=sizeof(a);j++){

        if(a[i]<a[j]){
            r=max(r,1+length(j,a));
        }
    }
    mem[i]=r;
    return mem[i];

}
int main()
{
    memset(mem,-1,sizeof(mem));
    cin>>n;
    int a[n];
    for(int i=1;i<=n;++i){
        cin>>a[i];
    }
    int ans=0;
    for(int i=1;i<=n;++i){
        ans=max(ans,length(i,a));
    }
    cout<<ans<<endl;
    return 0;
}
