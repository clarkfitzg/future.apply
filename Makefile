include .make/Makefile

vignettes/future.apply-1-overview.md.rsp: inst/vignettes-static/future.apply-1-overview.md.rsp.rsp
	$(CD) $(@D); \
	$(R_SCRIPT) -e "R.rsp::rfile" ../$< --postprocess=FALSE
	$(RM) README.md
	$(MAKE) README.md

vigs: vignettes/future.apply-1-overview.md.rsp
