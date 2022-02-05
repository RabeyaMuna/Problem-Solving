#include <iostream>

using namespace std;
int reversearray(int a[],int i,int n1){
    if (i>n1){
        return 0;
    }
    int temp=a[i];
    a[i]=a[n1];
    a[n1]=temp;
    reversearray(a,i+1,n1-1);
    }
int main()
{
    int n;
    cin>>n;
    int a[n];
    for(int i=0;i<n;++i){
        cin>>a[i];
    }
    reversearray(a,0,n-1);
    for(int i=0;i<n;++i){
        cout<<a[i]<<" ";
    }
    return 0;
}

