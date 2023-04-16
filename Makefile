MD_FILES=$(shell find ./content -name \*.md)
HTML_FILES=$(MD_FILES:.md=.html)
BUILD_HTML_FILES=$(HTML_FILES:%=docs/%)

all: $(BUILD_HTML_FILES)

docs/%.html: %.md
	@mkdir -p $$(dirname $@)
	pandoc -s --mathjax -o $@ $<

clean:
	-rm -rf docs/content
