#!/bin/bash

#$1 Version
#$2 Name to be

BUILD=build/netkit/kernel/netkit-kernel

if [ $1 = 'mptcp' ]
then
	echo "TODO !"
	touch kernel-mptcp
else
	make -f Makefile.ker KERNEL_RELEASE=$1 kernel
	cp $BUILD $2
	make -f Makefile.ker clean-all
fi
