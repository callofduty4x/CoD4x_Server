# CoD4 Disassembler
Runs only on Linux and executes only with root permissions and works with CoD4-Mac binary only.

## Compile

```bash
$ make
```
## Usage

```bash
$ ./cod4_dasm cod4-mac_binary
```

If you see:

```bash
mmap(file) failed: Operation not permitted
```
you should run the following command to allow users to mmap files to
addresses less than 0x10000.

```bash
$ sudo sh -c 'echo 4096 > /proc/sys/vm/mmap_min_addr'
```
Or, running cod4_dasm as a super user would also work.

## Notice

- This is still work in progress!
- This uses Maloader and libudis86(has its own license)


## License

Simplified BSD License or GPLv3.

Note that all files in "include" directory and some files in "libmac"
were copied from Apple's Libc-594.9.1.
http://www.opensource.apple.com/release/mac-os-x-1064/

See http://www.gnu.org/licenses/gpl-3.0.txt for GPLv3.
