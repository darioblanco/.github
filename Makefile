
# Please keep at the top.
SHELL := /usr/bin/env bash
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-builtin-variables

.PHONY: format help init lint

format: init ## automatically format yaml and json files
	prettier --write "**/*.{json,yaml,yml}"

help: ## list available commands
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

init: ## verify dependencies
	@function cmd { \
		if ! command -v "$$1" &>/dev/null ; then \
			echo "error: missing required command in PATH: $$1" >&2 ;\
			return 1 ;\
		fi \
	} ;\
	cmd actionlint ;\
	cmd prettier ;\

lint: init ## lints github workflows, yaml and json files
	actionlint
	prettier --check "**/*.{json,yaml,yml}"
