include <bits/stdc++.h>

using namespace std;
vector<int> s;
vector<int> combination;

void comb(int offset, int k) {
  if (k == 0) {
        for (int i = 0; i < combination.size(); ++i)
        {
            cout << combination[i] << " ";
  }
cout << endl;
    return;
  }
  for (int i = offset; i <= s.size() - k; ++i) {
    combination.push_back(s[i]);
    comb(i+1, k-1);
    combination.pop_back();
  }
}

int main() {
  int n,k;
  cin>>n>>k;

  for (int i = 0; i < n; ++i) { s.push_back(i+1); }
  comb(0, k);

  return 0;
}
