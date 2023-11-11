
make_flow <- function(path) {
	f <- file.path(path, "run.R")
	x <- list.files(path, pattern="\\.R$", ignore.case = TRUE)
	x <- x[!(tolower(x) %in% c("setup.r", "run.r"))]
	x <- gtools::mixedsort(x)
	writeLines(x, f)
}

run_flow <- function(path=NULL, repo, org="", skip=0) {

	try(rm(list=ls(globalenv()), env=globalenv()), silent=TRUE)
	if (!is.null(path)) {
		f <- file.path(path, "run.R")
	} else {
		f <- file.path("https://raw.githubusercontent.com", org, repo, "main/run.R")
	}
	x <- readLines(f)
	if (skip > 0) {
		if (skip >= length(x)) {
			message("nothing to do")
			return(invisible(NULL))
		}
		x <- x[-(1:skip)]
	}

	if (!is.null(path)) {
		x <- file.path(path, x)
	} else {
		x <- file.path("https://raw.githubusercontent.com", org, repo, "main/", x)
	}
	for (s in x) {
		message(basename(s)); utils::flush.console() 
		r <- readLines(s)
		kill <- eval(parse(text=r), envir=new.env())
	}
	return(invisible(NULL))
}

