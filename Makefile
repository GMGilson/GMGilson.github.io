.PHONY: all clean

.DEFAULT_GOAL := all

clean:
	rm -rf _site

build:
	bundle exec jekyll build --trace --incremental --safe

all: clean build
	bundle exec jekyll serve --livereload
	
	