
DEMO_DIR ?= generated
INPUT_FILE ?= input-for-demo.txt

.PHONY: demo
demo:
	cat $(INPUT_FILE) | copier copy . $(DEMO_DIR)
