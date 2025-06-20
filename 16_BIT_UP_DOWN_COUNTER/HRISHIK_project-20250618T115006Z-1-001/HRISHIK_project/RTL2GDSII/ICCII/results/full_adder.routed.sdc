################################################################################
#
# Design name:  up_down_counter
#
# Created by icc2 write_sdc on Mon Jun  2 17:03:03 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 1
create_clock -name Clock -period 5 -waveform {0 2.5} [get_ports {Clock}]
set_propagated_clock [get_clocks {Clock}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.0351143 [get_clocks {Clock}]
# -origin useful_skew
set_clock_latency -max 0.0364876 [get_clocks {Clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty -setup 0.3 [get_clocks {Clock}]
set_clock_uncertainty -hold 0.1 [get_clocks {Clock}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 4
set_input_transition 0.5 [get_ports {Clock}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 4
set_input_transition 0.5 [get_ports {Reset}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 4
set_input_transition 0.5 [get_ports {Enable}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 4
set_input_transition 0.5 [get_ports {Up_Down}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Clock}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Reset}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Enable}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Up_Down}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[15]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[14]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[13]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[12]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[11]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[10]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[9]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[8]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[7]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[6]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[5]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[4]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[3]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[2]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[1]}]
# /home/student/HRISHIK_project/RTL2GDSII/CONSTRAINTS/full_adder.sdc, line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Count[0]}]
set_max_transition 0.25 [current_design]
set_max_transition 0.15 [get_clocks {Clock}] -clock_path
