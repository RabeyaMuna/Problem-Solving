#include <iostream>
#include<bits/stdc++.h>
using namespace std;
 
int main() {
	// your code goes here
	int n;
	string s;
	cin>>n;
	cin>>s;
	int c=0;
	for(int i=0;i<s.size()-1;++i){
		if(s[i]==s[i+1]){
			c++;
		}
	}
	cout<<c<<endl;
	return 0;
}
