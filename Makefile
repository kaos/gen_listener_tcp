
#.PHONY: test

all:
	erl -pa ebin -make

test: all
	cd test ; ./test.escript
