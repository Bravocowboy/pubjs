

default: build

lib/parser.js: lib/parser.y lib/lexer.l
	jison -o $@ $^


build: lib/parser.js

clean:
	rm lib/parser.js 

all: build
