.PHONY: install
install:
	pip install '.[test]'

.PHONY: install-e
install-e:
	pip install -e '.[test]'

.PHONY: pre-commit-update
pre-commit-update:
	pre-commit autoupdate

.PHONY: readme
readme: 
	cog -r README.md

.PHONY:
check:
	pre-commit run --all-files --show-diff-on-failure && cog --check README.md

.PHONY: test
test:
	pytest
