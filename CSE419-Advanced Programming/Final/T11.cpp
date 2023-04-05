#include <bits/stdc++.h>
using namespace std;

void printArray(vector<int> arr, int n)
{
    for (int i = 0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}


void printSubsequences(vector<int> arr, int index,vector<int> subarr,int pro)
{

    if (index == arr.size())
    {
        int l = subarr.size();

        int p=1;
        for(int i=0;i<l;++i){
            p=p*subarr[i];
        }



        if (l != 0 && (p%pro==0))
            printArray(subarr, l);
    }

    else
    {

        printSubsequences(arr, index + 1, subarr,pro);

        subarr.push_back(arr[index]);

     //   cout<<arr[index]<<" "<<index<<endl;


        printSubsequences(arr, index + 1, subarr,pro);
    }
    return;
}

int main()
{
	int n,pro;
	cin>>n>>pro;

	int val;
    vector<int> a;
    for(int i=0;i<n;++i){
    	cin>>val;
    	a.push_back(val);
    }
    vector<int> b;

    printSubsequences(a, 0, b,pro);

    return 0;
}

