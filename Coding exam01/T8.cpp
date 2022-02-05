#include <bits/stdc++.h>
using namespace std;

int main(){

    int row,col;
    cin>>row>>col;

    vector<string>grid(row);

    for(int i=0;i<row;i++){

        cin>>grid[i];
    }

    int stx,sty,endx,endy;

    for(int i=0;i<row;++i){

        for(int j=0;j<col;j++){

            if(grid[i][j]=='s'){
                stx=i,sty=j;
            }

            if(grid[i][j]=='e'){
                endx=i,endy=j;
            }

        }
    }

    //cout<<stx<<sty<<endx<<endy;

    vector<int> dx={-2,-2,-1,-1,+1,+1,+2,+2};

    vector<int> dy={-1,+1,-2,+2,-2,+2,-1,+1};

    const int inf=10000;

    vector<vector<int>> dis (row,vector<int>(col,inf));
    vector<vector<int>> vis (row,vector<int>(col));

    queue<int> Queue;
    dis[stx][sty]=0;
    vis[stx][sty]=1;

    Queue.push(stx);
    Queue.push(sty);

    while(Queue.size()>0){

        int x=Queue.front();

        Queue.pop();

        int y=Queue.front();

        Queue.pop();

        for(int k=0;k<8;k++){

            int nx=x+dx[k];

            int ny=y+dy[k];

            if(nx>=0 && nx<row && ny>=0 && ny<col && grid[nx][ny]!='x' && vis[nx][ny]==0){

                dis[nx][ny]=dis[x][y]+1;

                vis[nx][ny]=1;

                Queue.push(nx);

                Queue.push(ny);
            }
        }
    }
    cout<<dis[endx][endy]<<" ";
}
