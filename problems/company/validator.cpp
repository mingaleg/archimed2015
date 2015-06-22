#include "testlib.h"
#include <string>

using namespace std;

int main(int argc, char * argv[]) {
    registerValidation();
    int n = inf.readInt(1, 1000, "n");
    inf.readEoln();
    for (int i = 0; i < n; ++i) {
        inf.readInt(0, n-1, "q_i");
        if (i < n-1) inf.readSpace();
    }
    inf.readEoln();
    inf.readEof();

    return 0;
}
