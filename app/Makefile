INC = inc
CFLAG = -I$(INC) -I../syslog
DIR = $(PWD)/app
LDFLAG = -lm  -L.. -lsyslog
SRC = $(DIR)/app.c
OUTPUT = build
TARGET_LIB = libapp

C_OBJS = $(SRC:%.c=%.o)

.PHONY: $(TARGET_LIB).a

$(TARGET_LIB).a: $(C_OBJS)
	@$(AR) r $@ $+
