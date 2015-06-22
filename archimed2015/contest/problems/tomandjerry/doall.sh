#   *** validation ***
scripts/run-validator-tests.sh
scripts/run-checker-tests.sh

#    *** tests ***
mkdir tests
echo "Generating test #3"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 5 5 1 5 1 1 1 5 2 -2" "tests/03" 3
echo "Generating test #4"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 5 5 1 3 1 1 3 5 2 -3" "tests/04" 4
echo "Generating test #5"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 5 5 1 3 1 1 4 5 1 -4" "tests/05" 5
echo "Generating test #6"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 3 4 1 3 1 1 1 3 1 -5" "tests/06" 6
echo "Generating test #7"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 10 6 4 10 2 1 1 3 1 -6" "tests/07" 7
echo "Generating test #8"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 10 6 4 10 2 1 4 4 2 -7" "tests/08" 8
echo "Generating test #9"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 10 6 4 10 2 1 10 10 1 -8" "tests/09" 9
echo "Generating test #10"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 100 100 5 25 20 10 3 40 10 -9" "tests/10" 10
echo "Generating test #11"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 100 100 5 25 1 21 10 15 6 -10" "tests/11" 11
echo "Generating test #12"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 100 100 5 25 20 10 3 4 10 -11" "tests/12" 12
echo "Generating test #13"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 100 100 5 25 1 21 26 99 6 -12" "tests/13" 13
echo "Generating test #14"
scripts/gen-input-via-stdout.sh "python3 files/gen.pys3 1 4 1 1 1 1 1 1 1 -11" "tests/14" 14
echo ""
echo "Generating answer for test #1"
scripts/gen-answer.sh tests/01 tests/01.a
echo ""
echo "Generating answer for test #2"
scripts/gen-answer.sh tests/02 tests/02.a
echo ""
echo "Generating answer for test #3"
scripts/gen-answer.sh tests/03 tests/03.a
echo ""
echo "Generating answer for test #4"
scripts/gen-answer.sh tests/04 tests/04.a
echo ""
echo "Generating answer for test #5"
scripts/gen-answer.sh tests/05 tests/05.a
echo ""
echo "Generating answer for test #6"
scripts/gen-answer.sh tests/06 tests/06.a
echo ""
echo "Generating answer for test #7"
scripts/gen-answer.sh tests/07 tests/07.a
echo ""
echo "Generating answer for test #8"
scripts/gen-answer.sh tests/08 tests/08.a
echo ""
echo "Generating answer for test #9"
scripts/gen-answer.sh tests/09 tests/09.a
echo ""
echo "Generating answer for test #10"
scripts/gen-answer.sh tests/10 tests/10.a
echo ""
echo "Generating answer for test #11"
scripts/gen-answer.sh tests/11 tests/11.a
echo ""
echo "Generating answer for test #12"
scripts/gen-answer.sh tests/12 tests/12.a
echo ""
echo "Generating answer for test #13"
scripts/gen-answer.sh tests/13 tests/13.a
echo ""
echo "Generating answer for test #14"
scripts/gen-answer.sh tests/14 tests/14.a
echo ""
echo "Generating answer for test #15"
scripts/gen-answer.sh tests/15 tests/15.a
echo ""
echo "Generating answer for test #16"
scripts/gen-answer.sh tests/16 tests/16.a
echo ""

