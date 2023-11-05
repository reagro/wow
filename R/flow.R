
make_flow <- function(path) {
	f <- file.path(path, "run.R")
	x <- list.files(path, pattern="\\.R$", ignore.case = TRUE)
	x <- x[!(x %in% tolower(c("setup.r", "run.R")))]
	writeLines(x, f)
}

run_flow <- function(path) {
	f <- file.path(path, "run.R")
	x <- readLines(f)
	for (s in x) {
		eval(parse(text=s))	
	}
}