transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/tinchuk/ee214/vending_machine {/home/tinchuk/ee214/vending_machine/vending_machine.v}
vlog -vlog01compat -work work +incdir+/home/tinchuk/ee214/vending_machine {/home/tinchuk/ee214/vending_machine/lcd.v}

