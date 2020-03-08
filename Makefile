# Hello World Makefile

OUTPUT_FILE = hello
INSTALL_DIR = bin

# Default Target
.PHONY: all
all: $(OUTPUT_FILE)

# Build 
$(OUTPUT_FILE): hello.c
	gcc -o hello hello.c

# Copy hello to bin directory
.PHONY: install
install:
	mkdir -p $(INSTALL_DIR)
	cp -p $(OUTPUT_FILE) $(INSTALL_DIR)

# Delete hello
.PHONY: clean
clean:
	rm -f $(OUTPUT_FILE)
	rm -f $(INSTALL_DIR)/*

