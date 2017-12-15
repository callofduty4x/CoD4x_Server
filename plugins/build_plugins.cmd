echo "Building Plugins -"

echo "Test1"
cd screenshotsender && makedll_win32.cmd && cd ..
echo "Test2"
cd sourcebansplugin && makedll_win32.cmd && cd ..
echo "Test3"

cd censor
makedll_win32.cmd
cd ..

cd cod4x_b3hide
makedll_win32.cmd
cd ..

cd simplebanlist
makedll_win32.cmd
cd ..

cd example_cpp_plugin
makedll_win32.cmd
cd ..

cd pchat
makedll_win32.cmd
cd ..

cd warn
makedll_win32.cmd
cd ..

cd antispam
makedll_win32.cmd
cd ..

