#include<iostream>
#include<vector>
#include<cmath>
#include<algorithm>

using namespace std;

int main() {
    long long n, b, f;
    cin >> n >> b >> f;
    vector<long long> a(n);
    for (int i = 0; i < n; ++i) {
        cin >> a[i];
    }
    while (a.size() > 1) {
        int cur = min_element(a.begin(), a.end()) - a.begin();
        long long tm = a[cur];
        a.erase(a.begin() + cur);
        for (int i = 0; i < a.size(); ++i) {
            if (a[i] < tm + b) {
                a[i] += f * (((tm + b - a[i]) / f) + (((tm + b - a[i]) % f) ? 1 : 0));
            }
        }
    }
    cout << a[0] + b << endl;
    return 0;
}
