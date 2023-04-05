#include <bits/stdc++.h>
using namespace std;

int findSubarraySum(int arr[], int n, int sum)
{

    unordered_map<int, int> prevSum;

    int res = 0;


    int currsum = 0;

    for (int i = 0; i < n; i++) {


        currsum += arr[i];



        if (currsum == sum){
            res++;
        }

2
        if (prevSum.find(currsum - sum) !=prevSum.end()){

            res += (prevSum[currsum - sum]);
        }



        prevSum[currsum]++;
    }

    return res;
}

int main()
{
    int n,k;
    cin>>n>>k;

    int arr[n];

    for(int i=0;i<n;i+=1){
        cin>>arr[i];
    }


    cout << findSubarraySum(arr, n, k);
    return 0;
}
