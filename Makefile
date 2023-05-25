# Compiler
COBC = cobc

# Options de compilation
COBCFLAGS = -x -free

# Fichiers sources et exécutables
SRC_DIR = src/main
BIN_DIR = bin
SRCS = $(wildcard $(SRC_DIR)/hello/*.cbl $(SRC_DIR)/wallet/*.cbl $(SRC_DIR)/booking/*.cbl $(SRC_DIR)/transation/*.cbl)
EXECS = $(patsubst $(SRC_DIR)/%.cbl,$(BIN_DIR)/%,$(SRCS))

.PHONY: all clean

all: $(EXECS)

$(BIN_DIR)/%: $(SRC_DIR)/%.cbl
	mkdir -p $(@D)
	$(COBC) $(COBCFLAGS) $< -o $@

clean:
	rm -rf $(BIN_DIR)


# hello:
# 		cobc -x -free HelloWorld.cbl
# 		./HelloWorld
# wallet:
# 		cobc -x -free Wallet.cbl
# 		./Wallet