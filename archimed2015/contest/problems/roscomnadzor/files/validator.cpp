#include "testlib.h"
#include <string>

using namespace std;

int main(int argc, char * argv[]) {
    registerValidation();
    inf.readToken("[a-z0-9]{1,100}", "s");
    inf.readEoln();
    inf.readToken("[a-z]{1,100}", "t");
    inf.readEoln();
    inf.readEof();
    return 0;
}
