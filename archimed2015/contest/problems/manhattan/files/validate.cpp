#include "testlib.h"

const int RANGE = 100;

int main(int argc, char* argv[]) {
    registerValidation();
    inf.readInt(-RANGE, RANGE);
    inf.readSpace();
    inf.readInt(-RANGE, RANGE);
    inf.readEoln();
    inf.readInt(-RANGE, RANGE);
    inf.readSpace();
    inf.readInt(-RANGE, RANGE);
    inf.readEoln();
    inf.readEof();
    return 0;
}
