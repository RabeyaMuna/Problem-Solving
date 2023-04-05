#include<bits/stdc++.h>

using namespace std;

int main(){
    int n,weight,maxNum;
    cin>>n>>weight;
    int d[weight+1],coins[n];
    memset(d,0,sizeof(d));
    d[0]=1;
    for(int i=0;i<n;++i){
        cin>>coins[i];
    }
    for(int j=1;j<=weight;++j){

        maxNum=0;
        for(int i=0;i<n;++i){

                if(j-coins[i]>=0)
                {
                   // cout<<"d[j-coins[i]] :"<<d[j-coins[i]]<<endl;
                    maxNum=max(maxNum,d[j-coins[i]]);
                   //  cout<<"maxNum :"<<maxNum<<endl;
    }
    }
     //cout<<" d[j] :"<<d[j]<<" j :"<<j<<endl;
    d[j]=maxNum;
    if(d[j]==1){
        cout<<j<<" ";
    }
    }
    }
