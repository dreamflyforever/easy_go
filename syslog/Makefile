INC = inc
CFLAG = -I$(INC) -I.
LDFLAG = -lm
DIR = $(PWD)/syslog
SRC = $(DIR)/syslog.c
OUTPUT = build
TARGET_LIB = libsyslog

C_OBJS = $(SRC:%.c=%.o)

.PHONY: $(TARGET_LIB).a

$(TARGET_LIB).a: $(C_OBJS)
	@$(AR) r $@ $+
