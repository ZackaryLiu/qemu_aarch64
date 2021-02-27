#!/bin/bash

qemu-system-aarch64 -machine virt -cpu cortex-a57 -nographic -kernel Image -initrd rootfs.cpio.gz -net nic -net tap,ifname=tap0,script=no --append ""
