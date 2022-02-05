#include <iostream>
 
using namespace std;
 
int main()
{
    string s;
    int flag=0;
    cin>>s;
   int i=0;
    int j=s.size()-1;
    while(i<j){
    	if(s[i]!=s[j]){
    		flag=1;
    		break;
    	}
    	i++;
    	j--;
    }
    if(flag==0){
    cout<<"Yes"<<endl;
    }
    else{
    	cout<<"No"<<endl;
    }
     return 0;
    }
