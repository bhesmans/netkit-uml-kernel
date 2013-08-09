fsdir = $(datadir)/$(PACKAGE)

fs = \
	default-ker

dist_fs_DATA = $(fs)

CLEANFILES = $(fs)

default-ker:
	chmod +x gen-ker.sh
	./gen-ker.sh 3.9.2 $@
