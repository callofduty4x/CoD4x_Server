echo "Building Plugins"

cd sourcebansplugin
./makedll_win32.cmd
cd ..

cd plugins/screenshotsender
./makedll_win32.cmd
cd ..

cd plugins/censor
./makedll_win32.cmd
cd ..

cd plugins/cod4x_b3hide
./makedll_win32.cmd
cd ..

cd plugins/simplebanlist
./makedll_win32.cmd
cd ..

cd plugins/example_cpp_plugin
./makedll_win32.cmd
cd ..

cd plugins/pchat
./makedll_win32.cmd
cd ..

cd plugins/warn
./makedll_win32.cmd
cd ..

cd plugins/antispam
./makedll_win32.cmd
cd ..

