#!/bin/bash
exec qemu-system-i386 -cpu host -vga vmware -m 1G -hda 1Gqcow2.img -smp 2 -serial stdio $@
