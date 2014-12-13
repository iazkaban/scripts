DESTDIR ?= $(HOME)/bin

CC = clang
CXX = clang++

CFLAGS = -g -O3 -Wall -Wextra -std=c99 -DLOCAL
CXXFLAGS = -g -O3 -Wall -Wextra -std=c++11
LDFLAGS = -rdynamic -Wl,-O1,--relax,-z,relro,--as-needed,--sort-common
LDLIBS = -ldl

install-%: %
	install -m755 $< $(DESTDIR)
