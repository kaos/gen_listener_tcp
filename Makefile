
#.PHONY: test

all:
	erl -pa ebin -make
	cp src/gen_listener_tcp.app.src ebin/gen_listener_tcp.app

test: all
	cd test ; ./test.escript

run_echo: all
	erl -pa ebin -s echo_server
