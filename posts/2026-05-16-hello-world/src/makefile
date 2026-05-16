TARGET=helloWorld
all:
	as -o $(TARGET).o $(TARGET).s
	ld -o $(TARGET) $(TARGET).o

edit:
	vim $(TARGET).s

run:
	./$(TARGET)

gdb:
	gdb --quiet -x hooks.gdb $(TARGET)

clean:
	rm $(TARGET) $(TARGET).o
