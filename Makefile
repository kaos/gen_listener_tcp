
#.PHONY: test

all:
	erl -pa ebin -make

test: all
	cd test ; ./test.escript

run_echo: all
	erl -pa ebin -s echo_server
