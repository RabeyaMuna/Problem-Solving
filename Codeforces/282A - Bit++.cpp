#include <bits/stdc++.h>
using namespace std;

int main() {
	int n;
	int c=0;
	cin>>n;
	string a;
	for(int i=1;i<=n;++i){
		cin>>a;
		if(a=="X++" || a=="++X" || a=="--X" || a=="X--"){
			if(a=="X++" || a=="++X"){
				c++;
			}
				if( a=="--X" || a=="X--"){
				c--;
			}
		}
	}
	cout<<c<<endl;
	return 0;
}
