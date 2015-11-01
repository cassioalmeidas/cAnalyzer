ROOT := ..
include $(ROOT)/Makefile.config

OBJS = parser.o lexer.o 

all:$(addprefix $(BUILD_DIR)/,$(OBJS))
	$(COLOR_GREEN)
	@echo ">> compiled lexer and parser, build dir is $(BUILD_DIR)"
	$(COLOR_END)

$(BUILD_DIR)/parser.o:$(BUILD_DIR)/parser.c
$(BUILD_DIR)/lexer.o:$(BUILD_DIR)/lexer.c $(BUILD_DIR)/parser.h

$(BUILD_DIR)/lexer.c:lexer.l $(BUILD_DIR)/parser.h
	$(COLOR_RED)
	$(FLEX) -o $@ $<
	$(COLOR_END)

$(BUILD_DIR)/parser.c $(BUILD_DIR)/parser.h:parser.y
	$(COLOR_RED)
	$(BISON) -o $@ -d $<
	$(COLOR_END)	

clean:
	@rm -f $(BUILD_DIR)/parser.h $(BUILD_DIR)/parser.c $(BUILD_DIR)/lexer.c $(addprefix $(BUILD_DIR)/,$(OBJS))