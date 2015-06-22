rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 10 1 1" "tests\05" 5
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 10 1 2" "tests\06" 6
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 10 1 3" "tests\07" 7
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 10 1 4" "tests\08" 8
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 10 2 5" "tests\09" 9
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 10 2 6" "tests\10" 10
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 15 1 7" "tests\11" 11
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 15 2 z" "tests\12" 12
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 1 10" "tests\13" 13
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 1 11" "tests\14" 14
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 2 12" "tests\15" 15
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 5 13" "tests\16" 16
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 100 10 14" "tests\17" 17
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 1 101" "tests\18" 18
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 1 102" "tests\19" 19
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 1 103" "tests\20" 20
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 1 104" "tests\21" 21
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 1 105" "tests\22" 22
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2 106" "tests\23" 23
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2 107" "tests\24" 24
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 2 108" "tests\25" 25
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 10 109" "tests\26" 26
call scripts\gen-input-via-stdout.bat "py -2 files\gen.pys2 1000 50 110" "tests\27" 27
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 100 1 212" "tests\28" 28
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 1000 1 300" "tests\29" 29
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 1000 1 301" "tests\30" 30
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 10 0 302" "tests\31" 31
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 1000 0 303" "tests\32" 32
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 10 -1 304" "tests\33" 33
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 1000 -1 515" "tests\34" 34
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 20 3 516" "tests\35" 35
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 20 3 517" "tests\36" 36
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 100 3 518" "tests\37" 37
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 100 3 519" "tests\38" 38
call scripts\gen-input-via-stdout.bat "py -2 files\gen_ordered.pys2 1000 3 520" "tests\39" 39
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
call scripts\gen-answer.bat tests\27 tests\27.a
call scripts\gen-answer.bat tests\28 tests\28.a
call scripts\gen-answer.bat tests\29 tests\29.a
call scripts\gen-answer.bat tests\30 tests\30.a
call scripts\gen-answer.bat tests\31 tests\31.a
call scripts\gen-answer.bat tests\32 tests\32.a
call scripts\gen-answer.bat tests\33 tests\33.a
call scripts\gen-answer.bat tests\34 tests\34.a
call scripts\gen-answer.bat tests\35 tests\35.a
call scripts\gen-answer.bat tests\36 tests\36.a
call scripts\gen-answer.bat tests\37 tests\37.a
call scripts\gen-answer.bat tests\38 tests\38.a
call scripts\gen-answer.bat tests\39 tests\39.a

