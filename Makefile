## help: show help info
.PHONY: help
help: Makefile
	@echo "\nUsage:\n  make <TARGET> <OPTIONS> ...\n\nTargets:"
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/  /'


## nvim: 安装nvim
.PHONY: nvim
nvim: 
	@R=$$(source ./nvim/install.sh && install_nvim)  && echo $$R