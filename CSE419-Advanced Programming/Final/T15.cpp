#include <bits//stdc++.h>
using namespace std;


struct Job
{
    int start, finish, profit;
};


bool jobComparataor(Job s1, Job s2)
{
    return (s1.finish < s2.finish);
}


int latestNonConflict(Job arr[], int i)
{
    for (int j=i-1; j>=0; j--)
    {
        if (arr[j].finish <= arr[i].start)
            return j;
    }
    return -1;
}


int findMaxProfit(Job arr[], int n)
{

    sort(arr, arr+n, jobComparataor);


    int *table = new int[n];
    table[0] = arr[0].profit;


    for (int i=1; i<n; i++)
    {

        int inclProf = arr[i].profit;
        int l = latestNonConflict(arr, i);
        if (l != -1)
            inclProf += table[l];


        table[i] = max(inclProf, table[i-1]);
    }


    int result = table[n-1];


    return result;
}


int main()
{
    Job arr[] = {{2, 4, 7}, {3, 8, 8}, {1, 2, 2}, {5, 7, 5}, { 9, 10, 6 }};
    int n = sizeof(arr)/sizeof(arr[0]);
    cout << findMaxProfit(arr, n);
    return 0;
}
