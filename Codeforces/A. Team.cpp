

#include<bits/stdc++.h>

using namespace std;

int main(){

   int n;
   cin>>n;
   int c=0;
   int p,v,t;
   for(int i=1;i<=n;++i){

        cin>>p>>v>>t;

        if((p==1 && v==1) || (v==1 && t==1) || (t==1 && p==1) ||(p==1 && v==1 && t==1) ){

                c++;

        }


   }
   cout<<c;
    return 0;

}
