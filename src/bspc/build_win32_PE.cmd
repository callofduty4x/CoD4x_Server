@echo off

echo Compiling C-code...
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_map.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_bsp_iw3.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c map_iw3.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_bsp_q3.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c map_q3.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c map.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c cm_patch.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../zlib/inflate.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../zlib/adler32.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../zlib/crc32.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../zlib/inffast.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../zlib/inftrees.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../zlib/cod4x_utils.c

g++ -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../mem_track.cpp
g++ -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../physicalmemory.cpp
g++ -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../com_pack.cpp
g++ -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c db_miniregistry.cpp
g++ -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c db_miniload.cpp
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c bspc.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_log.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_cmd.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_utils.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_qfiles.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_mem.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_threads.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_poly.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_bsp_ent.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_cm.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c aas_cfg.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_precomp.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_libvar.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_struct.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/l_script.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_bspq3.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_move.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_sample.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_cluster.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_reach.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_optimize.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../botlib/be_aas_routealt.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c be_aas_bspc.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_create.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_facemerging.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_gsubdiv.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_areamerging.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_prunenodes.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_edgemelting.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_store.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c aas_file.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c tree.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c portals.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c brushbsp.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c nodraw.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c glfile.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -DME -c csg.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c leakfile.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c l_assert.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c textures.c

gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../q_math.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../cm_trace.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../cm_load.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../cm_test.c
gcc -m32 -Wall -O0 -g -fno-omit-frame-pointer -march=nocona -D WINVER=0x501 -DBSPC -c ../cmodel.c



nasm -f win32 ../asmsource/_cm_tracebox.asm --prefix _ -o_cm_tracebox.o
nasm -f win32 ../asmsource/_cm_trace.asm --prefix _ -o_cm_trace.o
nasm -f win32 ../asmsource/_cm_mesh.asm --prefix _ -o_cm_mesh.o
nasm -f win32 asmsource/_db_load.asm --prefix _ -o_db_load.o
nasm -f win32 asmsource/_db_registry.asm --prefix _ -o_db_registry.o
nasm -f win32 asmsource/_db_assetnames.asm --prefix _ -o_db_assetnames.o

echo Linking...
gcc -m32 -g -Wl,--nxcompat -o bspc.exe *.o -static-libgcc -static -lstdc++ -lws2_32

echo Cleaning up...
del *.o

pause

