
init <- function(repo, org="", path=NULL, ...) {
	prj_path <- NULL
	if (!is.null(path)) {
		f <- file.path(file.path(path, "setup.R"))
	} else {
		f <- file.path("https://raw.githubusercontent.com", org, repo, "main/setup.R")
	}
	x <- try(readLines(f))
	if (inherits(x, "try-error")) {
		f <- file.path("https://github.com", org, repo, "setup.R")
		stop(paste(f, "does not exist"))
	} else {
		fun <- eval(parse(text=x))
	}
	fun(...)
}

