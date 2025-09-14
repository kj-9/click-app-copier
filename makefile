DEMO_DIR ?= generated
INPUT_FILE ?= input-for-demo.txt

.PHONY: demo
demo:
	rm -rf $(DEMO_DIR)
	cat $(INPUT_FILE) | copier copy --vcs-ref HEAD . $(DEMO_DIR) 

.PHONY: demo-update
demo-update:
	copier update --vcs-ref HEAD $(DEMO_DIR)

demo-check:
	cd $(DEMO_DIR) && $(MAKE) sync ci-check