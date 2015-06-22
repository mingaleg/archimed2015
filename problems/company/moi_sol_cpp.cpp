#include<iostream>
#include<vector>

using namespace std;

int main(void) {
    int n;
    cin >> n;
    vector<int> q(n);
    for (int i = 0; i < n; ++i) cin >> q[i];
    vector<bool> cry(n);
    int now = 0;
    for (int j = 0; j < n; ++j) {
        for (int i = 0; i < n; ++i) {
            if (cry[i]) continue;
            if (q[i] <= now) {
                cry[i] = true;
                ++now;
            }
        }
    }
    if (now == n) {
        cout << "YES" << endl;
    } else {
        cout << "NO" << endl;
    }
}
