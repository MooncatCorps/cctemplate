PROJECT_NAME = LunarProject
AUTHOR       = MooncatCorps

ifeq ($(OS),Windows_NT)

	FS_SEPARATOR       = \\
	SHELL              = idk fr
	RM                 = del
	OUT_FILE_EXTENSION = exe

else

	FS_SEPARATOR          = /
	SHELL                 = /usr/bin/sh
	RM                    = /usr/bin/rm -r
	OUT_FILE_EXTENSION    = out

endif

SOURCE_DIR   = src
RESOURCE_DIR = resources
BUILD_DIR    = .build
OUT_DIR      = $(BUILD_DIR)$(FS_SEPARATOR)out

SOURCE_FILE_EXTENSION = cc
HEADER_FILE_EXTENSION = hh
OBJECT_FILE_EXTENSION = o


SOURCE_FILES = $(shell find $(SOURCE_DIR) -name "*.$(SOURCE_FILE_EXTENSION)")
OBJECT_FILES = $(patsubst %.$(SOURCE_FILE_EXTENSION),$(BUILD_DIR)$(FS_SEPARATOR)%.$(OBJECT_FILE_EXTENSION),$(SOURCE_FILES))
OUT_FILE     = $(OUT_DIR)$(FS_SEPARATOR)$(PROJECT_NAME).$(OUT_FILE_EXTENSION)

CC = clang++

CCSTANDARD = c++20

CCFLAGS = -std=$(CC_STANDARD) -I$(SOURCE_DIR)
LDFLAGS =

default_target = all
.PHONY: default_target

all : $(OUT_DIR) $(OUT_FILE)
.PHONY: all

$(OUT_FILE) : $(OBJECT_FILES)
	$(CC) $^ -o $(OUT_FILE)

$(BUILD_DIR)$(FS_SEPARATOR)%.$(OBJECT_FILE_EXTENSION) : %.$(SOURCE_FILE_EXTENSION)
	mkdir -p $(shell dirname $@)
	$(CC) -c $^ -o $@

$(OUT_DIR) : $(BUILD_DIR)
	mkdir -p $(OUT_DIR)

clean :
	$(RM) $(BUILD_DIR)$(FS_SEPARATOR)*

