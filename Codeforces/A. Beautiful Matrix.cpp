#include <bits/stdc++.h>
using namespace std;

int main() {
	// your code goes here
	int mat[5][5];
	int newI,newJ,c=0;

	for(int i=0;i<5;++i){
        for(int j=0;j<5;++j){
            cin>>mat[i][j];
            if(mat[i][j]==1){
                newI=i;
                newJ=j;
            }
        }
	}
	cout<<abs(newI-2)+abs(newJ-2)<<endl;


	return 0;
}
