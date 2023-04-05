#include <bits/stdc++.h>

using namespace std;

int product=1;

void product_puzzel(int a[],int n){

    for(int i=0;i<n;++i){
        product=product * a[i];
    }

    for(int i=0;i<n;++i){
        cout<<(int) (product * pow(a[i],-1))<<" ";
    }

}
int main(){

    int n;
    cin>>n;
    int a[n];
    for(int i=0;i<n;++i){

        cin>>a[i];
    }

    product_puzzel(a,n);

return 0;
}
