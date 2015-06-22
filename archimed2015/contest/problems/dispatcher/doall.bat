rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 20 1" "tests\02" 2
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 20 2" "tests\03" 3
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 200 3" "tests\04" 4
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 200 4" "tests\05" 5
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 200 5" "tests\06" 6
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 6" "tests\07" 7
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 7" "tests\08" 8
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 8" "tests\09" 9
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 9" "tests\10" 10
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 10" "tests\11" 11
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 11" "tests\12" 12
call scripts\gen-input-via-stdout.bat "py -3 files\gen.pys3 1000 12" "tests\13" 13
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

