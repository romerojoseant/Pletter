# Makefile para compilar Pletter en Linux

CC      = gcc
CFLAGS  = -O2 -Wall
TARGET  = pletter
SRC     = pletter.c

# Regla principal
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

# Instalar en /usr/local/bin (requiere sudo)
install: $(TARGET)
	sudo cp $(TARGET) /usr/local/bin/

# Limpiar archivos generados
clean:
	rm -f $(TARGET)

