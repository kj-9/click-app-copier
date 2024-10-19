.PHONY: install
install:
	python -m pip install '.[test]'

.PHONY: install-e
install-e:
	python -m pip install -e '.[test]'

.PHONY: pre-commit-update
pre-commit-update:
	python -m pre_commit autoupdate

.PHONY: readme
readme:
	python -m cog -r README.md

.PHONY:
check:
	python -m pre_commit run --all-files --show-diff-on-failure && cog --check README.md

.PHONY: test
test:
	python -m pytest
