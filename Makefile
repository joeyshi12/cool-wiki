MD_FILES=$(shell find ./content -name \*.md)
HTML_FILES=$(MD_FILES:.md=.html)
BUILD_HTML_FILES=$(HTML_FILES:%=public/%)

all: $(BUILD_HTML_FILES)

public/%.html: %.md
	@mkdir -p $$(dirname $@)
	pandoc -s --mathjax -o $@ $<

clean:
	-rm -rf public/content
