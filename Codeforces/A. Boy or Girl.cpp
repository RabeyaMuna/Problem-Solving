#include <iostream>
#include <bits/stdc++.h>
using namespace std;
 
int main() {
	// your code goes here
	string s;
	cin>>s;
	set <char> s1;
	for(int i=0;i<s.size();++i){
		s1.insert(s[i]);
	}
	int n=s1.size();
	if(n%2==0){
		cout<<"CHAT WITH HER!"<<endl;
	}
	else{
		cout<<"IGNORE HIM!"<<endl;
	}
	return 0;
}
