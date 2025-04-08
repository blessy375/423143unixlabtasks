# 1. Create a .tar archive of a directory
tar -cvf backup.tar mydir/

# 2. Extract a .tar archive
tar -xvf backup.tar

# 3. Create a compressed .tar.gz archive
tar -czvf backup.tar.gz mydir/

# 4. Create a .cpio backup from a list of files
find . -type f > filelist.txt
cpio -ov < filelist.txt > backup.cpio

# 5. Restore files from a .cpio archive
cpio -idv < backup.cpio
