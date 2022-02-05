#include <iostream>
#include <vector>
#include<string>
using namespace std;
 
int main()
{
    int n;
   cin>>n;
    while(n<0 && n>=20000000){
    cin>>n;
   }
   string s=to_string(n);
   vector<char> v;
   vector<char>::iterator it;
   int j=0;
 
    for(int i = s.size() - 1; i >= 0; i--){
        v.push_back(s[i]);
        j++;
        if(j==3 && i>0){
            v.push_back(',');
            j=0;
        }
    }
    for (it = v.end() - 1; it >= v.begin(); it--){
        cout << *it << "";
    }
    return 0;
}
