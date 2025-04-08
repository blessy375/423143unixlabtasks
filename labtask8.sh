# 1. Compile the C program with debugging information
gcc -g myprog.c -o myprog

# 2. Enable core dumps (set size to unlimited for full dumps)
ulimit -c unlimited

# 3. Run the program (simulate a crash, e.g., segmentation fault)
./myprog

# If the program crashes, a core dump (usually named core or core.<pid>) will be generated

# 4. Use gdb to inspect the core dump
gdb ./myprog core

# 5. Inside gdb, examine the crash state
bt          # Show backtrace (stack trace)
info locals # Show local variables
list        # Show source code near the crash
quit        # Exit gdb
