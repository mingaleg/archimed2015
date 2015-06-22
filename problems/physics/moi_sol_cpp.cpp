#include <iostream>
#include <cmath>

using namespace std;

int main() {
    long v1, v2;
    long C = 299792458l;
    cin >> v1 >> v2;
    cout << min(C, v1 + v2) << endl;
    return 0;
}
