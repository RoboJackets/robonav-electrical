# Include the nanopb provided Makefile rules
include ../extra/nanopb.mk

# Compiler flags to enable all warnings & debug info
CFLAGS = -Wall -Werror -g -O0
CFLAGS += -I$(NANOPB_DIR)

# C source code files that are required
# CSRC  = simple.c                   # The main program
CSRC += igvc.pb.c                # The compiled protocol definition
CSRC += $(NANOPB_DIR)/pb_encode.c  # The nanopb encoder
CSRC += $(NANOPB_DIR)/pb_decode.c  # The nanopb decoder
CSRC += $(NANOPB_DIR)/pb_common.c  # The nanopb common parts

# Build rule for the protocol
igvc.pb.c: igvc.proto
	$(PROTOC) $(PROTOC_OPTS) --nanopb_out=. igvc.proto
