#include  <bits/stdc++.h>
using namespace std;
int main(){
	string s;
	cin>>s;
	multiset <int> v;
	for(int i=0;i<s.size();++i){
		if(s[i]!='+'){
		char c=s[i];
		int m=(c-'0');
		v.insert(m);
	}
	}
    for (auto it = v.begin(); it != v.end(); it++){
 
        if(it ==  v.begin()){
        	cout << *it <<"";
        }
        else{
        	cout <<"+"<< *it <<"";
        }
 
 
    }
 
 
 
 
    return 0;
}
