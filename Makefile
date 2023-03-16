CC = gcc
SRC_EXT = .c

TARGET = Project

INC_DIR = ./inc
SRC_DIR = ./src
OBJ_DIR = ./obj

SRCS = $(wildcard $(SRC_DIR)/*$(SRC_EXT))
OBJS = $(patsubst $(SRC_DIR)/%.o,$(OBJ_DIR)/%.o,$(SRCS:$(SRC_EXT)=.o))
DEPS = $(OBJS:.o=.d)

CFLAGS = -Wall -I$(INC_DIR)
LDFLAGS = 

all : $(TARGET)

$(TARGET) : main$(SRC_EXT) $(OBJS)
	$(CC) $(CFLAGS) $^ -o $(TARGET) $(LDFLAGS)

$(OBJ_DIR)/%.o : $(SRC_DIR)/%$(SRC_EXT)
	$(CC) $(CFLAGS) -c $< -o $@ -MD $(LDFLAGS)

clean :
	rm -f $(OBJS) $(DEPS) $(TARGET)

.PHONY : clean all
-include $(DEPS)