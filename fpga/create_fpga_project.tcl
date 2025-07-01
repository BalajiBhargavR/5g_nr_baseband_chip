create_project 5g_nr_baseband ./ -part xc7z010clg400-1
add_files ../rtl/dsp/fft.v
add_files ../tb/fft_tb.v
set_property top fft_tb [current_fileset]
update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 4
