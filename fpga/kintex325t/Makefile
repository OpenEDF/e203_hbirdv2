VIVADO ?= vivado
VIVADOFLAGS := \
	-nojournal -mode batch \
	-source script/board.tcl \
	-source script/prologue.tcl

VIVADOFLAGS_SETUP := \
	-nojournal -mode gui \
	-source script/board.tcl \
	-source script/prologue_setup.tcl

# Path to a program in raw binary format to be flashed into the address that the
# bootrom jumps to.
FLASHED_PROGRAM ?=
BIT_TCL = -source script/init.tcl -source script/impl.tcl 
BUILD_MCS_TCL = -source script/buildfile.tcl
bit_file := obj/system.bit

.PHONY: bit mcs setup clean
bit:
	VSRCS="$(VSRCS)" EXTRA_VSRCS="$(EXTRA_VSRCS)" $(VIVADO) $(VIVADOFLAGS) $(BIT_TCL)

mcs: $(bit_file)
	$(VIVADO) $(VIVADOFLAGS) $(BUILD_MCS_TCL) -tclargs $@ $^ $(FLASHED_PROGRAM)

setup:
	VSRCS="$(VSRCS)" EXTRA_VSRCS="$(EXTRA_VSRCS)" $(VIVADO) $(VIVADOFLAGS_SETUP) -source script/init_setup.tcl 

clean::
	rm -rf -- .Xil .ip_user_files *.os obj src/generated usage_statistics_webtalk.xml usage_statistics_webtalk.html *.log build
