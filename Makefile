# makefile for lsyslog library for Lua
CC=gcc
# change these to reflect your Lua installation
LUA=lua
LUAINC=/usr/include/lua5.2/

# no need to change anything below here
CFLAGS= -I $(LUAINC) $(WARN) -fPIC -O3 $G
WARN= -pedantic -Wall -Werror

MYNAME= syslog
MYLIB= $(MYNAME)
T= $(MYLIB).so
OBJS= l$(MYLIB).o syslog_r.o
TEST= test.lua

all:	test

test:	$T
	$(LUA) $(TEST)

o:	$(MYLIB).o
	syslog_r.o

so:	$T

$T:	$(OBJS)
	$(CC) -o $@ -shared $(OBJS)

clean:
	rm -f $(OBJS) $T core core.* a.out


