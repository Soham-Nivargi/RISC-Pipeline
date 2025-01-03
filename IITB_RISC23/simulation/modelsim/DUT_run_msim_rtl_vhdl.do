transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Semester_4/IITB_RISC23/main.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/stage1.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/registerfile.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/data_memory.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/pipereg1.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/singlebit_reg.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/stage2.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/pipereg2.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/stage3.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/pipereg3.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/instr_mem.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/alu.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/left_shift.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/control_unit.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/signex6_16.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/signex9_16.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/padder7.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/complement.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/control_hazard_unit.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/branch_control.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/comparator.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/stage4.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/pipereg4.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/stage5.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/pipereg5.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/stage6.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/forwarding_unit.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/reg_addr.vhd}
vcom -93 -work work {D:/Semester_4/IITB_RISC23/dut.vhd}

vcom -93 -work work {D:/Semester_4/IITB_RISC23/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
