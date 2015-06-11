transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/tinchuk/ee214/sram_test {/home/tinchuk/ee214/sram_test/sram.v}

