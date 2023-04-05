#include <bits/stdc++.h>

using namespace std;

int divided(int arr, int first, int val, int length){

  int mid = (first + length)/2;

  if ( val == mid){
    cout<< mid+1 <<endl;
    return 0;
  }

  else if ( arr[mid]> val){
    divided(arr, first, val, mid );
  }

  else{
    divided(arr, mid+1, val, length );
  }

}

int main(){
    int n,x;
    cin>>n>>endl;
    int a [n] = {1, 2, 2, 3, 3, 3};
    int x =3;

    divided(a, 0, x, n);
}
