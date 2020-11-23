#Morgan Iverson Make File 
CC = clang
CFLAGS = -Wall
LDFLAGS = 
OBJFILES = driver.o file1.o file2.o
TARGET = makeTest

all : $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

driver.o : driver.c headers.h
	$(CC) -c driver.c

file1.o : file1.c headers.h
	$(CC) -c file1.c

file2.o : file2.c headers.h
	$(CC) -c file2.c

clean : 
	rm -f $(OBJFILES) $(TARGET) *~