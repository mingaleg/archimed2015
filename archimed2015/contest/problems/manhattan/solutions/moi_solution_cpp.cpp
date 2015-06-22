#include<iostream>
#include<cmath>

using namespace std;

int penalty_odd_odd(int x, int y) {
    if ((x == 0) && (y == 0))
        return 0;
    if ((x <= 0) && (y <= 0))
        return (x%2 || y%2) ? 2 : 4;
    if ((x >= 0) && (y >= 0))
        return (x%2 && y%2) ? 2 : 0;
    if ((x < 0) && (y > 0))
        return (x%2 && y%2==0) ? 2 : 0;
    if ((x > 0) && (y < 0))
        return (x%2==0 && y%2) ? 2 : 0;
}


int penalty_odd_even(int x, int y) {
    if ((x == 0) && (y == 0))
        return 0;
    if ((x >= 0) && (y <= 0))
        return (x%2 || y%2) ? 2 : 4;
    if ((x <= 0) && (y >= 0))
        return (x%2 && y%2) ? 2 : 0;
    if ((x > 0) && (y > 0))
        return (x%2 && y%2==0) ? 2 : 0;
    if ((x < 0) && (y < 0))
        return (x%2==0 && y%2) ? 2 : 0;
}

int penalty_even_odd(int x, int y) {
    if ((x == 0) && (y == 0))
        return 0;
    if ((x <= 0) && (y >= 0))
        return (x%2 || y%2) ? 2 : 4;
    if ((x >= 0) && (y <= 0))
        return (x%2 && y%2) ? 2 : 0;
    if ((x < 0) && (y < 0))
        return (x%2 && y%2==0) ? 2 : 0;
    if ((x > 0) && (y > 0))
        return (x%2==0 && y%2) ? 2 : 0;
}

int penalty_even_even(int x, int y) {
    if ((x == 0) && (y == 0))
        return 0;
    if ((x >= 0) && (y >= 0))
        return (x%2 || y%2) ? 2 : 4;
    if ((x <= 0) && (y <= 0))
        return (x%2 && y%2) ? 2 : 0;
    if ((x > 0) && (y < 0))
        return (x%2 && y%2==0) ? 2 : 0;
    if ((x < 0) && (y > 0))
        return (x%2==0 && y%2) ? 2 : 0;
}

int main() {
    int x1, y1, x2, y2;
    cin >> x1 >> y1 >> x2 >> y2;
    int ans = abs(x1-x2) + abs(y1-y2);
    x2 -= x1;
    y2 -= y1;
    if (x1 % 2 == 0 && y1 % 2 == 0)
        ans += penalty_even_even(x2, y2);
    if (x1 % 2 != 0 && y1 % 2 == 0)
        ans += penalty_odd_even(x2, y2);
    if (x1 % 2 == 0 && y1 % 2 != 0)
        ans += penalty_even_odd(x2, y2);
    if (x1 % 2 != 0 && y1 % 2 != 0)
        ans += penalty_odd_odd(x2, y2);
    cout << ans << endl;
    return 0;
}
