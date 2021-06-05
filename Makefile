# Tutorial Make
TARGET = app
#LIBS = -lm -pthread

CC      = gcc
CFLAGS = -Wall -g


SRC_DIR = src
HDR_DIR = hdr
OBJ_DIR = obj

default: $(TARGET)
all: default

SRC = $(wildcard $(SRC_DIR)/*.c)
HDR = $(wildcard $(HDR_DIR)/*.h)
OBJ = $(SRC:$(SRC_DIR)/*.c=$(OBJ_DIR)/*.o)

.PRECIOUS: $(TARGET) $(OBJ)


$(TARGET): $(OBJ)
	$(CC) $(OBJ) $(LIBS) -o $@


#$(OBJ_DIR)/%.o: $(src)/%.cpp $(HDR)
#	$(CC) $(CCFLAGS) -c $< -o $@ 

clean:
	-rm -f $(OBJ_DIR)/*.o
	-rm -f $(TARGET)
