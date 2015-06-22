#include "testlib.h"

int main() {
    registerValidation();
    int n = inf.readInt(4, 100);
    inf.readSpace();
    int m = inf.readInt(1, 100);
    inf.readEoln();
    std::vector<std::string> data(n, std::string(m, ' '));

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            data[i][j] = inf.readChar();
        }
        inf.readEoln();
    }
    inf.readEof();

    int ropePosition = -1;
    int mode = 0;

    int currentNonTrivial = 0;
    int nontrivial3 = 0;

    int anvil_begin = -1;
    int anvil_end = -1;

    int k1 = 0;
    int k2 = 0;
    int k3 = 0;

    bool catFlag = false;

    for (int i = 0; i < n; ++i) {
        currentNonTrivial = 0;
        int cur_anvil_begin = -1;
        int cur_anvil_end = -1;
        for (int j = 0; j < m; j++) {
            if (mode == 0) {
                if (data[i][j] == '#') {
                    ensuref(currentNonTrivial == 0, "Rope and anvil in the same row");
                    mode = 1;
                } else if (data[i][j] == ' ') {
                } else if (data[i][j] == '|') {
                    ensuref(ropePosition == -1 || ropePosition == j, "Inconsistent rope position");
                    ropePosition = j;
                    currentNonTrivial += 1;
                }
            }
            if (mode == 1) {
                if (data[i][j] == '#') {
                    if (cur_anvil_begin == -1) {
                        cur_anvil_begin = j;
                    }
                    cur_anvil_end = j;
                }
            }
            if (mode == 2) {
                if (data[i][j] != ' ') {
                    catFlag = true;
                    mode = 3;
                }
            }
        }

        if (mode == 0) {
            ensuref(currentNonTrivial > 0, "No rope in row %d", i);
            k1 += 1;
        }
        if (mode == 1) {
            if (cur_anvil_begin == -1 && cur_anvil_end == -1) {
                mode = 2;
            } else {
                if (anvil_begin == -1 && anvil_end == -1) {
                    anvil_begin = cur_anvil_begin;
                    anvil_end = cur_anvil_end;
                } else {
                    ensuref(anvil_begin == cur_anvil_begin && anvil_end == cur_anvil_end, "Inconsisent anvil size at row %d", i);
                }
                k2 += 1;
            }
        }
        if (mode == 2) {
            k3 += 1;
        }
    }
    ensuref(k1 > 0, "No rope");
    ensuref(k2 > 0, "No anvil");
    ensuref(k3 > 0, "No space");
    ensuref(catFlag, "No cat");
    return 0;
}
