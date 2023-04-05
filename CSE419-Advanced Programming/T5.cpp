#include <bits/stdc++.h>

using namespace std;

int main(){
    string s;
    cin>>s;
    int left=0;

    int right=(int) s.size()-1;

    int mid=0;

    while(left<right){

        mid=((left+right+1)/2);


    if(s[mid]=='1'){

            right=mid-1;

        }

    else{

        left=mid+1;

    }

}
cout<<left<<endl;

return 0;
}
