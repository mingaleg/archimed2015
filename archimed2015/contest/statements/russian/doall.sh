cd ../../problems/physics/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/company/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/roscomnadzor/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/manhattan/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/elephant/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/tomandjerry/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/coats/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

cd ../../problems/dispatcher/statements/russian
for file in ./*.mp
do
    mpost $file
done
rm -f *.log
cd -

latex statements.tex
latex statements.tex
dvips statements.dvi
dvipdfmx -p a4 statements.dvi
rm -f *.log
rm -f *.aux
rm -f *.dvi
rm -f *.ps
