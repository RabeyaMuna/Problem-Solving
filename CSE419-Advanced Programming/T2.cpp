#include <bits/stdc++.h>
using namespace std;


int main()
{
    int n,m;

     cin>>n;

     set<int> s;

     for (int i = 0; i < n; i++){
     int a;
     cin>>a;
     s.insert(a);
     }

    cin>>m;

    for (int i = 0; i < m; i++){
        int b;
        cin>>b;
        s.insert(b);

    }

    for (auto itr = s.begin(); itr != s.end(); itr++)
        cout << *itr
             << " ";
}
