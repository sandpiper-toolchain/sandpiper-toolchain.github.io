SHELL := /bin/bash
BUNDLE := bundle
YARN := yarn
VENDOR_DIR = assets/vendor/
JEKYLL := $(BUNDLE) exec jekyll

PROJECT_DEPS := Gemfile

.PHONY: all install update

all : serve

clean:
	rm -rf _projects/*/.git; \
	rm -rf _projects/*/_software/*/.git; \
	rm -rf _projects/*/_specs/*/.git; \
# 	git clean -xdf

build: clean # install include-yarn-deps
	$(JEKYLL) build

serve: clean # install include-yarn-deps
	JEKYLL_ENV=production $(JEKYLL) serve