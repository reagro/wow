
.onAttach <- function(libname, pkgname) {
	packageStartupMessage("wow ", utils::packageVersion("wow"))
}

