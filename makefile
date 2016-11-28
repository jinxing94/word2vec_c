ifeq ($(shell uname -s), Darwin)
	CC = clang
else
	CC = gcc
	CFLAGS += -pthread -lm
endif

CFLAGS += -Ofast -std=c99

all: subword2vec.c
	${CC} subword2vec.c ${CFLAGS} -o subword2vec
clean: 
	rm subword2vec