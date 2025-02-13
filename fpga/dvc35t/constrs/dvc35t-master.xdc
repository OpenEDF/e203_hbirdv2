set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####               create clock              #####
set_property -dict { PACKAGE_PIN R4    IOSTANDARD LVCMOS33 } [get_ports { CLK50MHZ }]; 
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports {CLK50MHZ}];

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets dut_io_pads_jtag_TCK_i_ival]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets IOBUF_jtag_TCK/O]

#####              test clock         #####
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS33 } [get_ports {clk_16m}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33 } [get_ports {clk_32768hz}]

#####            rst define           #####
set_property PACKAGE_PIN U2  [get_ports fpga_rst  ]
set_property PACKAGE_PIN T1  [get_ports mcu_rst   ]

#####                spi0 define               #####
set_property PACKAGE_PIN M13 [get_ports  qspi0_cs    ]
set_property PACKAGE_PIN K14 [get_ports  qspi0_sck   ]
set_property PACKAGE_PIN R17 [get_ports {qspi0_dq[3]}]
set_property PACKAGE_PIN J16 [get_ports {qspi0_dq[2]}]
set_property PACKAGE_PIN N15 [get_ports {qspi0_dq[1]}]
set_property PACKAGE_PIN P19 [get_ports {qspi0_dq[0]}]

#####               MCU JTAG define           #####
set_property PACKAGE_PIN M17 [get_ports mcu_TDO]
set_property PACKAGE_PIN P20 [get_ports mcu_TCK]
set_property PACKAGE_PIN M16 [get_ports mcu_TDI]
set_property PACKAGE_PIN M15 [get_ports mcu_TMS]
set_property KEEPER true [get_ports mcu_TMS]

#####                PMU define               #####
set_property PACKAGE_PIN R2  [get_ports pmu_paden ]
set_property PACKAGE_PIN R3  [get_ports pmu_padrst]
set_property PACKAGE_PIN J17 [get_ports mcu_wakeup]

#####                gpioA define              #####
## sw_in 5
set_property PACKAGE_PIN K17   [get_ports {gpioA[31]}]
## sw_in 4
set_property PACKAGE_PIN K18   [get_ports {gpioA[30]}]
## sw_in 3
set_property PACKAGE_PIN K19   [get_ports {gpioA[29]}]
## sw_in 2
set_property PACKAGE_PIN J19   [get_ports {gpioA[28]}]
## sw_in 1
set_property PACKAGE_PIN F20   [get_ports {gpioA[27]}]
## sw_in 0
set_property PACKAGE_PIN F19   [get_ports {gpioA[26]}]
## LED 5
set_property PACKAGE_PIN K16   [get_ports {gpioA[25]}]     
## LED 4
set_property PACKAGE_PIN L16   [get_ports {gpioA[24]}]     
## LED 3
set_property PACKAGE_PIN L20   [get_ports {gpioA[23]}]     
## LED 2
set_property PACKAGE_PIN L19   [get_ports {gpioA[22]}]     
## LED 1
set_property PACKAGE_PIN T20   [get_ports {gpioA[21]}]     
## LED 0
set_property PACKAGE_PIN U20   [get_ports {gpioA[20]}]     
## Lora RX (uart2-tx)
set_property PACKAGE_PIN N19   [get_ports {gpioA[19]}]     
## Lora TX (uart2-rx)
set_property PACKAGE_PIN N18   [get_ports {gpioA[18]}]     
## UART TX
set_property PACKAGE_PIN M20   [get_ports {gpioA[17]}]
## UART RX
set_property PACKAGE_PIN N20   [get_ports {gpioA[16]}]
## EEPROM SDA
set_property PACKAGE_PIN J21   [get_ports {gpioA[15]}]
## EEPROM SCL
set_property PACKAGE_PIN J20   [get_ports {gpioA[14]}]
## LED (D21) 
set_property PACKAGE_PIN G20   [get_ports {gpioA[13]}]     
## TFT rs
set_property PACKAGE_PIN H20   [get_ports {gpioA[12]}]     
## TFT sdo MISO
set_property PACKAGE_PIN L18   [get_ports {gpioA[11]}]
## TFT sdi MOSI
set_property PACKAGE_PIN M18   [get_ports {gpioA[10]}]
## TFT cs
set_property PACKAGE_PIN F21   [get_ports {gpioA[9]}]      
## TFT scl
set_property PACKAGE_PIN F18   [get_ports {gpioA[8]}]
## key_in C
set_property PACKAGE_PIN E17   [get_ports {gpioA[7]}]
## key_in R
set_property PACKAGE_PIN D17   [get_ports {gpioA[6]}]
## key_in L
set_property PACKAGE_PIN N22   [get_ports {gpioA[5]}]
## key_in D
set_property PACKAGE_PIN M22   [get_ports {gpioA[4]}]
## key_in U
set_property PACKAGE_PIN M21   [get_ports {gpioA[3]}]
## RGB B
set_property PACKAGE_PIN L21   [get_ports {gpioA[2]}]
## RGB G
set_property PACKAGE_PIN K22   [get_ports {gpioA[1]}]
## RGB R
set_property PACKAGE_PIN K21   [get_ports {gpioA[0]}]      


#####                gpioB define              #####
set_property PACKAGE_PIN F15  [get_ports {gpioB[31]}]
set_property PACKAGE_PIN F16  [get_ports {gpioB[30]}]
set_property PACKAGE_PIN F13  [get_ports {gpioB[29]}]
set_property PACKAGE_PIN F14  [get_ports {gpioB[28]}]
set_property PACKAGE_PIN E14  [get_ports {gpioB[27]}]
set_property PACKAGE_PIN E13  [get_ports {gpioB[26]}]
set_property PACKAGE_PIN H18  [get_ports {gpioB[25]}]
set_property PACKAGE_PIN G18  [get_ports {gpioB[24]}]
set_property PACKAGE_PIN G17  [get_ports {gpioB[23]}]
set_property PACKAGE_PIN G16  [get_ports {gpioB[22]}]
set_property PACKAGE_PIN H15  [get_ports {gpioB[21]}]
set_property PACKAGE_PIN G15  [get_ports {gpioB[20]}]
set_property PACKAGE_PIN H14  [get_ports {gpioB[19]}]
set_property PACKAGE_PIN J14  [get_ports {gpioB[18]}]
set_property PACKAGE_PIN G13  [get_ports {gpioB[17]}]  
set_property PACKAGE_PIN H13  [get_ports {gpioB[16]}]  
set_property PACKAGE_PIN J15  [get_ports {gpioB[15]}]
set_property PACKAGE_PIN H17  [get_ports {gpioB[14]}]
set_property PACKAGE_PIN AB18 [get_ports {gpioB[13]}]
set_property PACKAGE_PIN AA18 [get_ports {gpioB[12]}]
set_property PACKAGE_PIN Y19  [get_ports {gpioB[11]}]
set_property PACKAGE_PIN Y18  [get_ports {gpioB[10]}]
set_property PACKAGE_PIN W20  [get_ports {gpioB[9]}]
set_property PACKAGE_PIN W17  [get_ports {gpioB[8]}]
set_property PACKAGE_PIN V18  [get_ports {gpioB[7]}]
set_property PACKAGE_PIN V17  [get_ports {gpioB[6]}]
set_property PACKAGE_PIN U18  [get_ports {gpioB[5]}]
set_property PACKAGE_PIN U17  [get_ports {gpioB[4]}]
set_property PACKAGE_PIN V19  [get_ports {gpioB[3]}]
set_property PACKAGE_PIN T18  [get_ports {gpioB[2]}]
set_property PACKAGE_PIN V20  [get_ports {gpioB[1]}]
set_property PACKAGE_PIN R18  [get_ports {gpioB[0]}]

#####            clock & rst define           #####
set_property IOSTANDARD LVCMOS33 [get_ports fpga_rst  ]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_rst   ]

#####                spi0 define               #####
set_property IOSTANDARD LVCMOS33 [get_ports  qspi0_cs    ]
set_property IOSTANDARD LVCMOS33 [get_ports  qspi0_sck   ]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {qspi0_dq[0]}]

#####               MCU JTAG define           #####
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDO]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TCK]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TDI]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_TMS]

#####                PMU define               #####
set_property IOSTANDARD LVCMOS33 [get_ports pmu_paden ]
set_property IOSTANDARD LVCMOS33 [get_ports pmu_padrst]
set_property IOSTANDARD LVCMOS33 [get_ports mcu_wakeup]

#####                gpioA define              #####
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioA[0]}]

#####                gpioB define              #####
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpioB[0]}]

#####         SPI Configurate Setting        #######
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
