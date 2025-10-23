.PHONY: all

all: clean scheduler.out

scheduler.out: scheduler.c
	gcc -g -Wall -o $@ $<

clean:
	rm -f scheduler.out

fifo-test-1: clean scheduler.out
	./scheduler.out 0 FIFO 2 test_fifo/test1.1.in

fifo-test-3: clean scheduler.out
	./scheduler.out 0 FIFO 2 test_fifo/test1.3.in

fifo-test-6: clean scheduler.out
	./scheduler.out 0 FIFO 2 test_fifo/test1.6.in
	
sjf-test-1: clean scheduler.out
	./scheduler.out 0 SJF 2 test_sjf/test2.1.in