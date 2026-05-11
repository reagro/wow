
.onAttach <- function(libname, pkgname) {
	packageStartupMessage("wow ", utils::packageVersion("wow"))
	#.wowenv <- new.env()
	#.wowenv$settings <- list()
	#.wowenv$project <- ""
}

