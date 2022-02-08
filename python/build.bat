set CL=/DASTRA_CUDA /DASTRA_PYTHON
set INCLUDE=..\include;..\lib\include;%CUDA_PATH%\include;%INCLUDE%;C:\boost\boost_1_78_0

copy ..\bin\x64\Release_CUDA\AstraCuda64.lib astra.lib
copy ..\bin\x64\Release_CUDA\AstraCuda64.dll .\astra\AstraCuda64.dll

python builder.py build_ext --compiler=msvc build
python builder.py bdist_wheel

pause