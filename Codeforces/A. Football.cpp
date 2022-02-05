
#include <bits/stdc++.h>
using namespace std;

int main() {
	// your code goes here
	string s;
	cin>>s;
	int n=1;
	for(int i=0;i<s.size()-1;++i){
		if(s[i]==s[i+1]){
			++n;
			if(n==7){
		  break;
	}
		}
		if((s[i]!=s[i+1]) && n<7){
			n=1;
		}
	}

	if(n==7){
		  cout<<"YES"<<endl;
	}
	if (n<7){
		cout<<"NO"<<endl;
	}

	return 0;
}
