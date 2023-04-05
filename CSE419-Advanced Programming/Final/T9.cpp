#include <bits/stdc++.h>


using namespace std;


double calculateLnx(double n)
{

    double num, mul, cal, sum = 0;
    num = (n - 1) / (n + 1);


    for (int i = 1; i <= 1000; i++) {
        mul = (2 * i) - 1;
        cal = pow(num, mul);
        cal = cal / mul;
        sum = sum + cal;
    }
    sum = 2 * sum;
    return sum;
}



int main()
{

    int n;
    cin>>n;
    double lnx;
    lnx = calculateLnx(n);


    cout << fixed << setprecision(5)<< lnx << endl;

}
