#include <bits/stdc++.h>
using namespace std;
 
int main() {
	string s;
	cin>>s;
	for(int i=0;i<s.size();++i){
		if(islower(s[0])){
			char ch=s[0]-32;
			s[0]=ch;
		}
	}
	cout<<s<<endl;
	return 0;
}
