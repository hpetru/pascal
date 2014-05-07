CC=fpc
CFLAGS=
F=p1

all: clear compile run

clear:
	rm -rf $(F)
compile:
	$(CC) $(CFLAGS) $(F).pas $(F)
run:
	./$(F)
