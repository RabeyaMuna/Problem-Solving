#include<bits/stdc++.h>
using namespace std;


int LCIS(int a[], int b[],int dp[], int n)
{

    for (int i=0; i<3; i++)
    {
        int current = 0;

        for (int j=0; j<n; j++)
        {
            if (a[i] == b[j]) {
                    if (current + 1 > dp[j]){
                    	dp[j] = current + 1;
            }
            }

            if (a[i] > b[j]){
                if (dp[j] > current){
                    current = dp[j];
                }
        }
    }
    }
    int result = 0;
    for (int i=0; i<n; i++){
        if (dp[i] > result){
           result = dp[i];
        }
    }

    return result;
}


int main(){

    int n;
    cin>>n;

    int a[n];

     for(int i=0;i<n;++i){
        cin>>a[i];
     }

    int b[n];

     for(int j=0;j<n;++j){
        cin>>b[j];
     }

    int dp[n];

    memset(dp,0,sizeof(dp));

    cout << LCIS(a,b,dp,n);
    for(int i=0;i<n;++i){
        cout<<dp[i]<<" ";
    }

    return 0;
}
//5
//5 2 4 1 3
//2 3 5 2 1
