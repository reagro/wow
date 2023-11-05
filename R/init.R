
init <- function(repo, org="", local=NULL) {
	prj_path <- NULL
	if (!is.null(local)) {
		f <- file.path(file.path(local, "setup.R"))
	} else {
		f <- file.path("https://raw.githubusercontent.com", org, repo, "main/setup.R")
	}
	x <- try(readLines(f))
	if (inherits(x, "try-error")) {
		f <- file.path("https://github.com", org, repo, "setup.R")
		stop(paste(f, "does not exist"))
	} else {
		eval(parse(text=x))
	}
	if (is.null(prj_path)) {
		stop("setup.R does not assign a value to 'prj_path'")
	} 
	create_folders(prj_path)
	prj_path
}

