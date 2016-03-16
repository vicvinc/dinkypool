.PHONY : all clean compile

EXESH = tester

INCDIR = ./include
BINDIR = ./bin
SRCDIR = ./src

INTFLAGS = \
        -g \
        -Wall \
        -Wextra \
        -pedantic \
        -fPIC \
        -pthread

CPPFLAGS = $(INTFLAGS) -I$(INCDIR)

.SUFFIXES: .cxx .cpp .c .C .o .h .hxx

SRCMAIN =$(SRCDIR)/main.cpp
SRCINC = $(INCDIR)/PoolBase.cxx

OBJMAIN = $(SRCMAIN:.cpp=.o)
OBJLIB = $(SRCINC:.cxx=.o)

all: compile

#compile: $(OBJMAIN) $(OBJLIB)
compile: $(OBJMAIN) $(OBJLIB)
	g++ $(CPPFLAGS) -o $(BINDIR)/$(EXESH) $(OBJMAIN) $(OBJLIB)
clean:
	rm -rf $(OBJMAIN) $(OBJLIB)
.cpp.o:
	@echo compile $<
	g++ -o $@ -c $(CPPFLAGS) $<
.cxx.o:
	@echo compiling $<
	g++ -o $@ -c $(CPPFLAGS) $<
	#@$(CXX) $(CFLAGS_COMMON) $(DEBUG) -o $@ -c $<
