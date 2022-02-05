#include<bits/stdc++.h>

using namespace std;

int partion(int a[],int l, int h){

  int pivoid=a[h];
  int i=l;

  for(int j=l;j<=h;++j){
    if(a[j]<pivoid){
            swap(a[i],a[j]);
            ++i;
    }
  }
  swap(a[i],a[h]);
  return i;

}

void quicksort(int a[],int l, int e){

    if(l<e){
        int p=partion(a,l,e);
        quicksort(a,l,p-1);
        quicksort(a,p+1,e);
    }


}

int main(){

int n;
cin>>n;
int a[n];
for(int i=0;i<n;++i){
    cin>>a[i];
}

quicksort(a,0,n-1);
for(int i=0;i<n;++i){
    cout<<a[i]<<" ";
}
}
