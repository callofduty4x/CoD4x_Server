echo Compiling NASM...

nasm -f elf src/MacAppleEvents.asm        -o bin/MacAppleEvents.o
nasm -f elf src/sv_init_mp.asm        -o bin/sv_init_mp.o
nasm -f elf src/sv_main_mp.asm        -o bin/sv_main_mp.o
nasm -f elf src/sv_main_pc_mp.asm        -o bin/sv_main_pc_mp.o
nasm -f elf src/sv_msg_write_mp.asm        -o bin/sv_msg_write_mp.o
nasm -f elf src/sv_snapshot_mp.asm        -o bin/sv_snapshot_mp.o
nasm -f elf src/msg_mp.asm        -o bin/msg_mp.o
