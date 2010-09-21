CC	=gcc
CFLAGS	=-Os -Wall -Werror -pedantic
LDFLAGS	=
LDLIBS	=

all::	pathmerge

check::	pathmerge
	echo /tmp | ./pathmerge ${ARGS}

install:: pathmerge
	${INSTALL} -D -c -s pathmerge ${BINDIR}/pathmerge

uninstall::
	${RM} ${BINDIR}/pathmerge

clean::
	${RM} a.out core.* lint tags

distclean clobber:: clean
	${RM} pathmerge
