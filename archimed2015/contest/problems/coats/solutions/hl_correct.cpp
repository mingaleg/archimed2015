#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n;
    double x, d;
    cin >> x >> d >> n;
    vector<double> temperature(n);
    for (int i = 0; i < n; ++i) {
        cin >> temperature[i];
    }
    int ans = 0;
    bool winter_coat = (temperature[0] <= x);
    for (int i = 1; i < n; ++i) {
        if (winter_coat) {
            if (temperature[i] >= x + d) {
                winter_coat = false;
            } else {
                if (temperature[i] > x) {
                    ans++;
                }
            }
        } else {
            if (temperature[i] <= x - d) {
                winter_coat = true;
            } else {
                if (temperature[i] <= x) {
                    ans++;
                }
            }
        }
    }
    cout << ans << endl;
    return 0;
}
