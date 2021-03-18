#################
# Sample script #
#################

DIR			= /vol/scratch/yuvalyehudab/condor
Executable		= $(DIR)/sample1
Log			= sample1.log
Error   		= sample1.error.$(Process)
Output  		= sample1.output.$(Process) 
notification		= Always
Universe		= Vanilla
Queue 4
