BINARY_NAME := appimage-cli-tool
BUILD_DIR := dist
MAIN_PKG := ./cmd

.PHONY: get-deps clean build 

.PHONY: build
build:
	mkdir -p $(BUILD_DIR)
	go build -o $(BUILD_DIR)/$(BINARY_NAME) -v $(MAIN_PKG)

.PHONY: install
install: build
	install -Dm755 $(BUILD_DIR)/$(BINARY_NAME) /usr/local/bin/$(BINARY_NAME)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
