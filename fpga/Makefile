# See LICENSE for license details.
# Required variables:
# - FPGA_DIR
# - INSTALL_RTL

base_dir := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
FPGA_NAME := dvc35t
FPGA_DIR := $(base_dir)/${FPGA_NAME}
INSTALL_RTL ?= $(base_dir)/install/rtl

CORE = e203
PATCHVERILOG ?= ""
base_dir := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

# Install RTLs
install:
	mkdir -p ${PWD}/install
	cp ${PWD}/../rtl/${CORE} ${INSTALL_RTL} -rf
	cp ${FPGA_DIR}/src/system.v ${INSTALL_RTL}/system.v -rf
	cp ${FPGA_DIR}/src/clkdivider.v ${INSTALL_RTL}/clkdivider.v
	sed -i '1i\`define FPGA_SOURCE\'  ${INSTALL_RTL}/core/${CORE}_defines.v

EXTRA_FPGA_VSRCS :=
verilog := $(wildcard ${INSTALL_RTL}/*/*.v)
verilog += $(wildcard ${INSTALL_RTL}/*/*/*.v)
verilog += $(wildcard ${INSTALL_RTL}/*.v)

.PHONY: mcs install bit setup clean load
mcs : install
	BASEDIR=${base_dir} VSRCS="$(verilog)" EXTRA_VSRCS="$(EXTRA_FPGA_VSRCS)" $(MAKE) -C $(FPGA_DIR) mcs

bit : install
	BASEDIR=${base_dir} VSRCS="$(verilog)" EXTRA_VSRCS="$(EXTRA_FPGA_VSRCS)" $(MAKE) -C $(FPGA_DIR) bit

setup:
	BASEDIR=${base_dir} VSRCS="$(verilog)" EXTRA_VSRCS="$(EXTRA_FPGA_VSRCS)" $(MAKE) -C $(FPGA_DIR) setup

load:
	$(MAKE) -C $(FPGA_DIR) load

clean:
	$(MAKE) -C $(FPGA_DIR) clean
	rm -rf fpga_flist install vivado.* novas.* xvlog.* xsim.dir *jou *.log
