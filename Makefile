CC=clang++
CFLAGS=-pedantic-errors -Wall -Wextra -Werror -gdwarf-4 -std=c++20
LDFLAGS=
SOURCES=main.cc datetime.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=datetime

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(SOURCES) $(CFLAGS) $(LDFLAGS) -o $@

clean:
	rm -rf *.o $(EXECUTABLE)
