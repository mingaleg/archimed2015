#include "testlib.h"
#include <string>

using namespace std;

int main(int argc, char * argv[]) {
    registerValidation();
    inf.readDouble(-89, 55, "x");
    inf.readSpace();
    inf.readDouble(0, 6, "d");
    inf.readEoln();
    int n = inf.readInt(1, 1000);
    inf.readEoln();
    for (int i = 0; i < n; ++i) {
        inf.readDouble(-89, 55, "t_i");
        if (i < n-1) inf.readSpace();
    }
    inf.readEoln();
    inf.readEof();

    return 0;
}
