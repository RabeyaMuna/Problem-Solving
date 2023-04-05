#include <bits/stdc++.h>
using namespace std;

int minJumps(int arr[], int l, int h)
{

if (h == l)
    return 0;

if (arr[l] == 0)
    return INT_MAX;

int minMum = INT_MAX;
for (int i = l + 1; i <= h &&
         i <= l + arr[l]; i++)
{
    int jumps = minJumps(arr, i, h);
    if(jumps != INT_MAX && jumps + 1 < minMum)
        minMum = jumps + 1;
}

return minMum;
}

int main()
{
    int n;
    cin>>n;
    int arr[n];
    for(int i=0;i<n;++i){
        cin>>arr[i];
    }
    int a=minJumps(arr, 0, n-1);
    if(a==INT_MAX){
            cout<<-1;
    }
     else{
        cout<<a;
}
    return 0;
}
