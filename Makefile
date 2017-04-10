INC = inc
CC = gcc
AR = ar
CFLAG = -I$(INC) -Isyslog
LDFLAG = -lm  -Lsyslog/build -lsyslog
TARGET = fos
MAKEINCLUDE= app/Makefile syslog/Makefile

OBJS = app/app.o syslog/syslog.o


.PHONY: $(TARGET)

include ${MAKEINCLUDE}
all:$(TARGET)
	@echo Build $< Done
	@echo $(OBJS)

$(TARGET): $(OBJS)
	$(CC) $(CFLAG) $+ $(LDFLAG) -o $@

clean:
	-rm $(OBJS) $(TARGET)
