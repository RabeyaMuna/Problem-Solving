#include<bits/stdc++.h>
#define ll long long
using namespace std;


#define maxn 10005
#define INF 10000000

int cont[maxn];
int mem[105][10005];
int item[105][10005];

int c=0;

int f(int n, int cap){
    if(n==0){
        return 0;
    }
    if( mem[n][cap] != -1){
        return mem[n][cap];
    }
     int r1 = -INF , r2 = -INF;
     if( cont[n] <= cap){
        r1= cont[n]+ f( n-1 , cap-cont[n]);
       // cout<<"r1 "<<r1<<endl;

     }
     r2 = f(n-1, cap);
      //cout<<"r2 "<<r2<<endl;
     mem[n][cap] = max(r1,r2);
	 item[n][cap] = 0;
     if(r1>=r2){

        item[n][cap] = 1;
    // cout<<" item[n][cap] :"<<n <<" "<<cap<<endl;
     }
     return mem[n][cap];

}

int main(){

    memset(mem,-1,sizeof(mem));
    memset(item,-1,sizeof(item));
    int nc;
    int cap;

    cin>>nc>>cap;
    for (int i=1; i <= nc ; i++){
        cin>>cont[i];
    }

    cout<< f(nc,cap)<<endl;

   cout<<c<<endl;

	int x = nc, y = cap;
	while(x!=0){
		if(item[x][y]==1){
			cout << x << " ";
			y = y - cont[x];
		}

		x--;
	}

	cout << "\n";
    return 0;

}
