GCC = gcc
AR = ar
CFLAG = -I$(INC)
LDFLAG = -lm
SRC = app.c
OUTPUT = build
TARGET_LIB = libapp

C_OBJS = $(SRC:%.c=%.o)

.PHONY: $(TARGET_LIB).a

all:$(TARGET_LIB).a
	@echo Build $< Done
	@echo $(C_OBJS)

$(TARGET_LIB).a: $(C_OBJS)
	@$(AR) r $@ $+

export

clean:
	rm -rf $(TARGET_LIB).a
	rm $(OUTPUT) -rf

install:
	-mkdir -p $(OUTPUT)
	-mv *.o $(OUTPUT)
	-mv *.a $(OUTPUT)
