SHELLCMDS :=cache/shellcmds.txt
.PHONY : $(SHELLCMDS)
$(SHELLCMDS) : SHELL :=/bin/bash
$(SHELLCMDS) :
	source ~/.profile && source ~/.bashrc && compgen -c | sort | uniq > $@
