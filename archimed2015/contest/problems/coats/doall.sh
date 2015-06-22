#   *** validation ***
scripts/run-validator-tests.sh
scripts/run-checker-tests.sh

#    *** tests ***
mkdir tests
echo "Generating test #6"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 2 1" "tests/06" 6
echo "Generating test #7"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 2 2" "tests/07" 7
echo "Generating test #8"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 1.5 3" "tests/08" 8
echo "Generating test #9"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 1.5 4" "tests/09" 9
echo "Generating test #10"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 1.01 5" "tests/10" 10
echo "Generating test #11"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 1.01 239" "tests/11" 11
echo "Generating test #12"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100 5 6" "tests/12" 12
echo "Generating test #13"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100000 1 7" "tests/13" 13
echo "Generating test #14"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100000 6 8" "tests/14" 14
echo "Generating test #15"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100000 1.001 9" "tests/15" 15
echo "Generating test #16"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100000 2.5 101" "tests/16" 16
echo "Generating test #17"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100000 2.5 102" "tests/17" 17
echo "Generating test #18"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 100000 2.5 103" "tests/18" 18
echo "Generating test #19"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 10" "tests/19" 19
echo "Generating test #20"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 11" "tests/20" 20
echo "Generating test #21"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 12" "tests/21" 21
echo "Generating test #22"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 13" "tests/22" 22
echo "Generating test #24"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 14" "tests/24" 24
echo "Generating test #25"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 15" "tests/25" 25
echo "Generating test #26"
scripts/gen-input-via-stdout.sh "python2 files/gen.pys2 1000 2.5 16" "tests/26" 26
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
echo "Generating answer for test #17"
scripts/gen-answer.sh tests/17 tests/17.a
echo ""
echo "Generating answer for test #18"
scripts/gen-answer.sh tests/18 tests/18.a
echo ""
echo "Generating answer for test #19"
scripts/gen-answer.sh tests/19 tests/19.a
echo ""
echo "Generating answer for test #20"
scripts/gen-answer.sh tests/20 tests/20.a
echo ""
echo "Generating answer for test #21"
scripts/gen-answer.sh tests/21 tests/21.a
echo ""
echo "Generating answer for test #22"
scripts/gen-answer.sh tests/22 tests/22.a
echo ""
echo "Generating answer for test #23"
scripts/gen-answer.sh tests/23 tests/23.a
echo ""
echo "Generating answer for test #24"
scripts/gen-answer.sh tests/24 tests/24.a
echo ""
echo "Generating answer for test #25"
scripts/gen-answer.sh tests/25 tests/25.a
echo ""
echo "Generating answer for test #26"
scripts/gen-answer.sh tests/26 tests/26.a
echo ""

