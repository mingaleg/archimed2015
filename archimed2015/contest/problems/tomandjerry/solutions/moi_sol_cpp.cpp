#include<string>
#include<vector>
#include<iostream>
#include<cstdio>

using namespace std;

int main() {
    int n, m;
    scanf("%d %d\n", &n, &m);
    vector<string> field(n);
    for (int i = 0; i < n; ++i) {
        getline(cin, field[i]);
    }
    int i = 0;
    for (; field[i].find("#") == string::npos; ++i);
    int Xa = field[i].find("#");
    int Ya = Xa;
    while (Ya < m && field[i][Ya] == '#') ++Ya;
    --Ya;

    for(; field[i].find("#") != string::npos; ++i);
    for(; field[i].find_first_not_of(" ") == string::npos; ++i);

    int Xc = 0;
    for(; field[i][Xc] == ' '; ++Xc);
    int Yc = Xc;

    for (int cx = i; cx < n; ++cx) {
        for (int cy = 0; cy < m; ++cy) {
            if (field[cx][cy] != ' ') {
                if (cy < Xc) Xc = cy;
                if (cy > Yc) Yc = cy;
            }
        }
    }

    if (Xa <= Xc && Xc <= Ya) {
        cout << "YES" << endl;
    } else if (Xa <= Yc && Yc <= Ya) {
        cout << "YES" << endl;
    } else if (Xc <= Xa && Xa <= Yc) {
        cout << "YES" << endl;
    } else if (Xc <= Ya && Ya <= Yc) {
        cout << "YES" << endl;
    } else {
        cout << "NO" << endl;
    }
}
