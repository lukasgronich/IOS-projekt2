# Compiler setup
CC=gcc
CFLAGS=-std=gnu99 -Wall -Wextra -Werror -pedantic -pthread -lrt
SRC_DIR=.
BUILD_DIR=.
ENTRY_FILE=lukejepica.c
OUTPUT_FILE=proj2

all: complie

complie: $(ENTRY_FILE)
    $(CC) $(CFLAGS) -o $(OUTPUT_FILE) $(ENTRY_FILE)

run:
    $(BUILD_DIR)/$(OUTPUT_FILE)

clean:
    rm -f $(BUILD_DIR)/$(OUTPUT_FILE)