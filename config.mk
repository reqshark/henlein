# henlein version
VERSION = 0.0

PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

CC = cc
AR = ar
RANLIB = ranlib

CPPFLAGS = -D_XOPEN_SOURCE=700
CFLAGS   = -O2 -std=c99 -Wall -pedantic
LDFLAGS  = -s

ifneq ($(OS),Windows_NT)
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        LDFLAGS += -lrt
    endif
endif
