PROJECT_NAME = LunarProject
AUTHOR       = MooncatCorps

SOURCE_DIR   = src
RESOURCE_DIR = resources
BUILD_DIR    = .build
OUT_DIR      = $(BUILD_DIR)/out

SOURCE_FILE_EXTENSION = cc
HEADER_FILE_EXTENSION = hh
OBJECT_FILE_EXTENSION = o
OUT_FILE_EXTENSION    = out

SOURCE_FILES = $(shell find $(SOURCE_DIR) -name "*.$(SOURCE_FILE_EXTENSION)")
OBJECT_FILES = $(patsubst %.$(SOURCE_FILE_EXTENSION),$(BUILD_DIR)/%.$(OBJECT_FILE_EXTENSION),$(SOURCE_FILES))
OUT_FILE = $(OUT_DIR)/$(PROJECT_NAME).$(OUT_FILE_EXTENSION)

CC = clang++

CCSTANDARD = c++20

CCFLAGS = -std=$(CC_STANDARD) -I$(SOURCE_DIR)
LDFLAGS =

.PHONY: all clean

all : $(OUT_DIR) $(OUT_FILE)

$(OUT_FILE) : $(OBJECT_FILES)
	$(CC) $^ -o $(OUT_FILE)

$(BUILD_DIR)/%.$(OBJECT_FILE_EXTENSION) : %.$(SOURCE_FILE_EXTENSION)
	mkdir -p $(shell dirname $@)
	$(CC) -c $^ -o $@

$(OUT_DIR) : $(BUILD_DIR)
	mkdir -p $(OUT_DIR)

clean :
	rm -r $(BUILD_DIR)/*

