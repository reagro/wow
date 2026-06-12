
init <- function(repo, org="", path=NULL, ...) {
	if (!(exists(WoW) && is.list(WoW))) {		
		if (!is.null(path)) {
			f <- file.path(file.path(path, "0_setup.R"))
		} else {
			f <- file.path("https://raw.githubusercontent.com", org, repo, "main/0_setup.R")
		}
		x <- try(readLines(f))
		if (inherits(x, "try-error")) {
			f <- file.path("https://github.com", org, repo, "0_setup.R")
			stop(paste(f, "does not exist"))
		} else {
			fun <- eval(parse(text=x))
		}
		fun(...)
	}
}

