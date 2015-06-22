#include "testlib.h"

const int C = 299792458;

int main() {
    registerValidation();
    inf.readInt(0, C);
    inf.readSpace();
    inf.readInt(0, C);
    inf.readEoln();
    inf.readEof();
    return 0;
}
