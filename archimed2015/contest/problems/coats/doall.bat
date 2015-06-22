rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 2 1" "tests\06" 6
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 2 2" "tests\07" 7
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 1.5 3" "tests\08" 8
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 1.5 4" "tests\09" 9
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 1.01 5" "tests\10" 10
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 1.01 239" "tests\11" 11
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 5 6" "tests\12" 12
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100000 1 7" "tests\13" 13
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100000 6 8" "tests\14" 14
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100000 1.001 9" "tests\15" 15
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100000 2.5 101" "tests\16" 16
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100000 2.5 102" "tests\17" 17
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100000 2.5 103" "tests\18" 18
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 10" "tests\19" 19
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 11" "tests\20" 20
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 12" "tests\21" 21
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 13" "tests\22" 22
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 14" "tests\24" 24
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 15" "tests\25" 25
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2.5 16" "tests\26" 26
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
call scripts\gen-answer.bat tests\17 tests\17.a
call scripts\gen-answer.bat tests\18 tests\18.a
call scripts\gen-answer.bat tests\19 tests\19.a
call scripts\gen-answer.bat tests\20 tests\20.a
call scripts\gen-answer.bat tests\21 tests\21.a
call scripts\gen-answer.bat tests\22 tests\22.a
call scripts\gen-answer.bat tests\23 tests\23.a
call scripts\gen-answer.bat tests\24 tests\24.a
call scripts\gen-answer.bat tests\25 tests\25.a
call scripts\gen-answer.bat tests\26 tests\26.a

