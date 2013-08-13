#!/bin/bash

#$1 Version
#$2 Name to be

BUILD=build/netkit/kernel/netkit-kernel

if [ $1 = 'mptcp' ]
then
	echo "TODO !"
	touch kernel-mptcp
else
	make -f Makefile.ker -j4 KERNEL_RELEASE=$1 kernel
	cp $BUILD $2
	cp -r build/netkit/kernel/modules ../netkit-uml-filesystem/
	make -f Makefile.ker clean-all
fi
