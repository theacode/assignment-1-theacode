CC = ~/Roufai/Autoformation/Linux/Toolchain/aarch64-none-linux-gnu/bin/aarch64_be-none-linux-gnu-gcc                      
NC = gcc
CFLAGS = -Wall -Wextra -g        
TARGET = writer              
OBJFILES = writer.o 
SOURCE = writer.c


$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES)


$(OBJFILES): $(SOURCE)
	$(CC) $(CFLAGS) -c $(SOURCE) -o $(OBJFILES)


clean:
	rm -f $(OBJFILES) $(TARGET)
