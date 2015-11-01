ROOT = .
include $(ROOT)/Makefile.config

all:$(TARGET)


$(TARGET):$(addprefix $(BUILD_DIR)/, $(TARGET_OBJS))
	make -C src
	
	$(COLOR_YELLOW)
	$(CC) $(CFLAGS) -o $@ $+
	$(COLOR_END)
	
	$(COLOR_GREEN)
	@echo ">> compiled successfully, target name is $(TARGET)"
	$(COLOR_END)
	
$(addprefix $(BUILD_DIR)/, $(TARGET_OBJS)):
	make -C src
	
clean:
	$(COLOR_YELLOW)
	@echo "cleaning projects:"
	@rm -rf $(BUILD_DIR)/*
	@echo "removed everything in directory $(BUILD_DIR)"
	@rm -f ./$(TARGET)
	@echo "removed target binary:$(TARGET)"
	$(COLOR_END)
	make clean -C src