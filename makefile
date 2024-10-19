DEMO_DIR ?= generated
INPUT_FILE ?= input-for-demo.txt

.PHONY: demo
demo:
	cat $(INPUT_FILE) | copier copy --vcs-ref HEAD . $(DEMO_DIR) 

.PHONY: demo-update
demo-update:
	copier update --vcs-ref HEAD $(DEMO_DIR)
