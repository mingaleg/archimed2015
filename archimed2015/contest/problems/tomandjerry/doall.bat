rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 5 5 1 5 1 1 1 5 2 -2" "tests\03" 3
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 5 5 1 3 1 1 3 5 2 -3" "tests\04" 4
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 5 5 1 3 1 1 4 5 1 -4" "tests\05" 5
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 3 4 1 3 1 1 1 3 1 -5" "tests\06" 6
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 10 6 4 10 2 1 1 3 1 -6" "tests\07" 7
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 10 6 4 10 2 1 4 4 2 -7" "tests\08" 8
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 10 6 4 10 2 1 10 10 1 -8" "tests\09" 9
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 100 100 5 25 20 10 3 40 10 -9" "tests\10" 10
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 100 100 5 25 1 21 10 15 6 -10" "tests\11" 11
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 100 100 5 25 20 10 3 4 10 -11" "tests\12" 12
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 100 100 5 25 1 21 26 99 6 -12" "tests\13" 13
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1 4 1 1 1 1 1 1 1 -11" "tests\14" 14
call scripts\gen-answer.bat tests\01 tests\01.a
call scripts\gen-answer.bat tests\02 tests\02.a
call scripts\gen-answer.bat tests\03 tests\03.a
call scripts\gen-answer.bat tests\04 tests\04.a
call scripts\gen-answer.bat tests\05 tests\05.a
call scripts\gen-answer.bat tests\06 tests\06.a
call scripts\gen-answer.bat tests\07 tests\07.a
call scripts\gen-answer.bat tests\08 tests\08.a
call scripts\gen-answer.bat tests\09 tests\09.a
call scripts\gen-answer.bat tests\10 tests\10.a
call scripts\gen-answer.bat tests\11 tests\11.a
call scripts\gen-answer.bat tests\12 tests\12.a
call scripts\gen-answer.bat tests\13 tests\13.a
call scripts\gen-answer.bat tests\14 tests\14.a
call scripts\gen-answer.bat tests\15 tests\15.a
call scripts\gen-answer.bat tests\16 tests\16.a

