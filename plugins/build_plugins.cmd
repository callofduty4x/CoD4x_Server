echo "Building Plugins -"

cd screenshotsender && call makedll_win32.cmd && cd ..
cd sourcebansplugin && call makedll_win32.cmd && cd ..
cd censor && call makedll_win32.cmd && cd ..
cd cod4x_b3hide && call makedll_win32.cmd && cd ..
cd simplebanlist && call makedll_win32.cmd && cd ..
cd example_cpp_plugin && call makedll_win32.cmd && cd ..
cd pchat && call makedll_win32.cmd && cd ..
cd warn && call makedll_win32.cmd && cd ..
cd antispam && call makedll_win32.cmd && cd ..

