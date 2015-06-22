#include "testlib.h"

int main() {
    registerValidation();
    int n = inf.readInt(1, 1000);
    inf.readSpace();
    inf.readInt(1, (int) 1e9);
    inf.readSpace();
    inf.readInt(1, (int) 1e9);
    inf.readEoln();
    for (int i = 0; i < n; ++i) {
        inf.readInt(0, (int) 1e9);
        if (i + 1 == n) {
            inf.readEoln();
        } else {
            inf.readSpace();
        }
    }
    inf.readEof();
}
