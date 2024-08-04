vlib work
vlog SPI.v RAM.v project.v test.v
vsim -voptargs=+acc work.test
add wave -position insertpoint  \
sim:/test/clk \
sim:/test/i \
sim:/test/MISO \
sim:/test/MOSI \
sim:/test/rst_n \
sim:/test/SS_n
add wave -position insertpoint  \
sim:/test/dut/rx_data \
sim:/test/dut/rx_valid \
sim:/test/dut/tx_data \
sim:/test/dut/tx_valid
add wave -position insertpoint  \
sim:/test/dut/dut/cs
run -all
#quit -sim