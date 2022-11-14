#---------------------------------------
# Makefile - Make instructions for
# compiling the library
#---------------------------------------
# Created:  October 	13th, 2022  9:41 PM
# Modified:	November	11th, 2022  8:52 PM
#---------------------------------------

#------------------------------------------------------------------------------
# MACRO DEFINITIONS
#------------------------------------------------------------------------------

# Options
WORK_DIR	?= .
OUT_NAME	?= libc
DEBUG		?= 0

# Input directories
SRC_DIRS	:= $(WORK_DIR)/src
INC_DIRS	:= $(WORK_DIR)/includes

# Output directories
OUT_DIR	:= $(WORK_DIR)/bin
INT_DIR	:= $(OUT_DIR)/int
OBJ_DIRS	:= $(foreach dir,$(SRC_DIRS),$(INT_DIR)/$(dir))

# List of input files and intermediaries
SRC_LIST	:= $(foreach dir,$(SRC_DIRS), $(wildcard $(dir)/*.s))
INT_LIST	:= $(foreach file,$(SRC_LIST),$(INT_DIR)/$(file).o)

# Targets
OUT_TARGET	:= $(OUT_DIR)/$(OUT_NAME).a
DMP_TARGET	:= $(OUT_DIR)/$(OUT_NAME).txt

# Build tools
AS			:= nasm
LD 		:= ar
DMP 		:= objdump

# General build options
ASFLAGS	:= -f elf64
LDFLAGS	:= -rvs
DMPFLAGS	:= -d

# Debug options
ifeq ($(DEBUG),0)
else
	ASFLAGS += -g
endif

# Include paths
ASFLAGS	+= $(foreach dir,$(INC_DIRS),-I$(dir)) $(foreach dir,$(LIB_DIRS),-I$(dir))

#------------------------------------------------------------------------------
# BUILD INSTRUCTIONS
#------------------------------------------------------------------------------

# Linking / output
$(OUT_TARGET) : $(OBJ_DIRS) $(INT_LIST)
	$(LD) $(LDFLAGS) -o $@ $(INT_LIST)
	wc -c $@

# Assembling
$(INT_DIR)/%.s.o : %.s
	$(AS) $(ASFLAGS) -o $@ $<

# Create directories
$(OBJ_DIRS) :
	mkdir -p $@

#------------------------------------------------------------------------------
# EXTRA TARGETS / TOOLS
#------------------------------------------------------------------------------

# Delete the output directory
clean :
	rm -rf $(OUT_DIR) $(INT_DIR) $(OBJ_DIRS)

# Disassemble the output binary
dump : $(OUT_TARGET)
	$(DMP) $(DMPFLAGS) $< > $(DMP_TARGET)

