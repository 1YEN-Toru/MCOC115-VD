#
# set INIT_FILE() parameter in the instruction ROM macro script
#	(c) 2023	1YEN Toru
#
#	This script is useful for post-synthesis simulations.
#	Configure: Project Settings => Simulation =>
#		Compilation => xsim.compile.tcl.pre
#		by full path name to this script.
#		eg.) C:\ ... \mcoc_irom.tcl
#
puts "USER: running mcoc_irom.tcl"
puts [concat "USER: pwd " [pwd]]

# select input file
set	fnam "test_func_synth.v"
if { [catch {open $fnam} fin] } {
	set	fnam "test_time_synth.v"
	if { [catch {open $fnam} fin] } {
		set	fnam "test_func_impl.v"
		if { [catch {open $fnam} fin] } {
			set	fnam "test_time_impl.v"
			if { [catch {open $fnam} fin] } {
				puts "USER: verilog file not found, probably RTL simulation."
				exit 0
			}
		}
	}
}
puts [concat "USER: found " $fnam]
# open output file
set	fout [open "test_out.v" w]
# set MEM file name
set	repl_on 0
while {[gets $fin lbuf] >= 0} {
	if {$repl_on} {
		set	repl_on [regexp {INIT_FILE} $lbuf]
		set	repl_on [expr ! $repl_on]
		regsub {INIT_FILE\("NONE"\),} $lbuf {INIT_FILE("mcoc_irom.mem"),} lnew
	} else {
		set	repl_on [regexp {RTL_RAM_NAME.*romwr} $lbuf]
		set	lnew $lbuf
	}
	puts $fout $lnew
}
# close files
close $fout
close $fin

# rename
file rename -force $fnam test_back.v
file rename -force test_out.v $fnam
puts "USER: finish mcoc_irom.tcl"

