echo [INFO]: Building problem 'physics'.
pushd problems\physics
call doall.bat
popd

echo [INFO]: Building problem 'company'.
pushd problems\company
call doall.bat
popd

echo [INFO]: Building problem 'roscomnadzor'.
pushd problems\roscomnadzor
call doall.bat
popd

echo [INFO]: Building problem 'manhattan'.
pushd problems\manhattan
call doall.bat
popd

echo [INFO]: Building problem 'elephant'.
pushd problems\elephant
call doall.bat
popd

echo [INFO]: Building problem 'tomandjerry'.
pushd problems\tomandjerry
call doall.bat
popd

echo [INFO]: Building problem 'coats'.
pushd problems\coats
call doall.bat
popd

echo [INFO]: Building problem 'dispatcher'.
pushd problems\dispatcher
call doall.bat
popd

echo [INFO]: Building russian contest statement.
pushd statements\russian
call doall.bat
popd

