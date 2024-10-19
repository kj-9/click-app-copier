DEMO_DIR ?= generated
INPUT_FILE ?= input-for-demo.txt

.PHONY: demo
demo:
	cat $(INPUT_FILE) | copier copy . $(DEMO_DIR)

.PHONY: demo-update
demo-update:
	cd $(DEMO_DIR) && copier update
