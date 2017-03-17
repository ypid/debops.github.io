JEKYLLOPTS = --verbose --trace

.PHONY: default
default: serve

.PHONY: serve
serve:
	jekyll serve --watch $(JEKYLLOPTS)

.PHONY: build
build:
	jekyll build $(JEKYLLOPTS)

.PHONY: check
check: build
	html5validator --show-warnings --root _site

.PHONY: clean
clean:
	$(RM) -r _site
