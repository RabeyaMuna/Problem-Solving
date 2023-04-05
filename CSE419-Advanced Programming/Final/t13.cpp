#include<bits/stdc++.h>
using namespace std;


int minCoins(int coins[], int m, int V,int from[])
{


    int table[V+1];

    table[0] = 0;

    for (int i=1; i<=V; i++){
        table[i] = INT_MAX;
    }


    for (int i=1; i<=V; i++)
    {

        for (int j=0; j<m; j++)
        {


          if (coins[j] <= i)
          {
              int sub_res = table[i-coins[j]];

              if (sub_res != INT_MAX && sub_res + 1 < table[i]){

                  table[i] = sub_res + 1;
                  from[i-coins[j]]=j;

              }




          }
    }
    }
}




int main()
{
    int n,V;
    cin>>n>>V;
    int coins[n];

    for(int i=0;i<n;++i){
        cin>>coins[i];
    }
int from [V+1];

    cout<<minCoins(coins, n, V,from);
     int k=V;
 while (k != 0)
        {
            cout<<coins[from[k]]<<" ";
            k = k - coins[from[k]];
        }
        cout<<endl;
    return 0;
}
