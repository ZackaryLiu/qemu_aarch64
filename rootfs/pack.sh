# This cmd should be executed in the rootfs_pack directory.

find . | cpio -o -H newc | gzip > ../rootfs.cpio.gz
