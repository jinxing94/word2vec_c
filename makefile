ifeq ($(shell uname -s), Darwin)
	CC = clang
else
	CC = gcc
	CFLAGS += -pthread -lm
endif

CFLAGS += -O2 -std=c99

all: subword2vec.c subword2vec2.c subword2vec3.c word_analogy.c
	${CC} subword2vec.c ${CFLAGS} -o subword2vec
	${CC} word_analogy.c ${CFLAGS} -o word_analogy
	${CC} subword2vec2.c ${CFLAGS} -o subword2vec2
	${CC} subword2vec3.c ${CFLAGS} -o subword2vec3
clean: 
	rm subword2vec
