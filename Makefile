TARGET = fos

SUBDIRS	= app syslog
OBJECTS	= 

all:subdirs ${OBJECTS}
	${CC} -o ${TARGET} $$(find ./${SUBDIRS} -name '*.o') ${LDFLAGS} ${INCLUDES}

clean:cleansubdirs
	rm -f ${TARGET} ${OBJECTS}

export PRO_PATH = $(PWD)
export MK_CF = $(PRO_PATH)/mk.cf

include $(MK_CF)
