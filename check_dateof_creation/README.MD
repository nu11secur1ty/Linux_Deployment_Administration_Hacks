# quickly get only last modify date, you can type:

```bash
ls -lit /path
```

- - - with -t option you list all file in /path odered by last modify date.

# List all files on the directory

```bash
ls -lit /path *
```

# Check by using `stat`

```bash
stat -c '%y %d' /path/file.txt
```
- - - Usage:
```bash
  %a   access rights in octal (note '#' and '0' printf flags)
  %A   access rights in human readable form
  %b   number of blocks allocated (see %B)
  %B   the size in bytes of each block reported by %b
  %C   SELinux security context string
  %d   device number in decimal
  %D   device number in hex
  %f   raw mode in hex
  %F   file type
  %g   group ID of owner
  %G   group name of owner
  %h   number of hard links
  %i   inode number
  %m   mount point
  %n   file name
  %N   quoted file name with dereference if symbolic link
  %o   optimal I/O transfer size hint
  %s   total size, in bytes
  %t   major device type in hex, for character/block device special files
  %T   minor device type in hex, for character/block device special files
  %u   user ID of owner
  %U   user name of owner
  %w   time of file birth, human-readable; - if unknown
  %W   time of file birth, seconds since Epoch; 0 if unknown
  %x   time of last access, human-readable
  %X   time of last access, seconds since Epoch
  %y   time of last data modification, human-readable
  %Y   time of last data modification, seconds since Epoch
  %z   time of last status change, human-readable
  %Z   time of last status change, seconds since Epoch

Valid format sequences for file systems:

  %a   free blocks available to non-superuser
  %b   total data blocks in file system
  %c   total file nodes in file system
  %d   free file nodes in file system
  %f   free blocks in file system
  %i   file system ID in hex
  %l   maximum length of filenames
  %n   file name
  %s   block size (for faster transfers)
  %S   fundamental block size (for block counts)
  %t   file system type in hex
  %T   file system type in human readable form
```
- - - In my case 

```bash
stat -c '%A %w %x %y %z' path/file.txt
```
- output should be
```bash
-rw-r--r-- - 2020-09-04 11:07:14.786018113 +0300 2019-10-17 10:22:29.990955200 +0300 2019-10-17 10:22:29.994955169 +0300
```
- BR
