#include <bits/stdc++.h>

using namespace std;

int main()
{

    int M,N;
    cin>>M>>N;

  int Mat[M][N];

    for(int i=0;i<M;++i){

        for(int j=0;j<N;++j){

            cin>>Mat[i][j];
        }
    }

    int dp[M][N];

       for(int i=0;i<M;++i){
        for(int j=0;j<N;++j){
            dp[i][j]=0;
        }
    }

    dp[0][0]=Mat[0][0];

    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {

            if (i == 0 && j > 0) {
                dp[0][j] = dp[0][j-1]+Mat[0][j];
            }


            else if (j == 0 && i > 0) {
                dp[i][0] = dp[i - 1][0]+Mat[i][0];
            }


            else if (i > 0 && j > 0) {
                dp[i][j] =Mat[i][j]+ min(dp[i - 1][j], dp[i][j - 1]);
            }
        }
    }

    cout << dp[M-1][N-1];

    return 0;
}
