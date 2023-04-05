#include <bits/stdc++.h>

using namespace std;

void Count_sort(int a[],int n)
{
    int maxNum = *max_element(a, a+n);
    int minNum = *min_element(a,a+n);
    int range = maxNum - minNum  + 1;


    vector<int> count(range), output(n);
    for (int i = 0; i < n; i++){
    	 count[a[i] - minNum ]++;
    }


    for (int i = 1; i < count.size(); i++){
        count[i] += count[i - 1];
    }

    //for (int i = 1; i < count.size(); i++){
    //    cout<<count[i]<<" ";
   // }

    for (int i = n - 1; i >= 0; i--) {
        output[count[a[i] - minNum] - 1] = a[i];
        count[a[i] - minNum]--;
    }

    for (int i = 0; i < n; i++){
        a[i] = output[i];
    }

    for (int i = 0; i < n; i++){
        cout << a[i] << " ";
    }

}



int main()
{

    int n ;
    cin>>n;
    int a[n];
    for(int i=0;i<n;++i){
        cin>>a[i];
    }

    Count_sort(a,n);
}
