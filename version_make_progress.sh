#!/bin/bash
# increments the real number held in version.h by 0.01

read line < src_mod/versioning/version_build.h
tokens=($line)
version=${tokens[2]}
newversion=$(echo $version + 1 | bc)
echo "#define BUILD_NUMBER $newversion" > src_mod/versioning/version_build.h