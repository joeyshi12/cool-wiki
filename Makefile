MD_FILES=$(shell find ./content -name \*.md)
HTML_FILES=$(MD_FILES:.md=.html)
BUILD_HTML_FILES=$(HTML_FILES:%=docs/%)

all: $(BUILD_HTML_FILES)

docs/%.html: %.md
	@mkdir -p $$(dirname $@)
	pandoc --highlight-style=tango -s --mathjax -o $@ $<

new:
	$(if $(path),\
		@mkdir -p content/$$(dirname $(path));\
		cp -i templates/basic.md content/$(path),\
		$(error syntax: make new path=<content-path>)\
	)

clean:
	-rm -rf docs/content
