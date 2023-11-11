
create_folders <- function(path) {
	dir.create(path, FALSE, TRUE)
	dir.create(file.path(path, "data/raw"), FALSE, TRUE)
	dir.create(file.path(path, "data/intermediate"), FALSE)
	dir.create(file.path(path, "data/final"), FALSE)
	dir.create(file.path(path, "img"), FALSE)
	dir.create(file.path(path, "results"), FALSE)
	invisible(dir(path, recursive=TRUE, include.dirs=TRUE, full.names=TRUE))
}	


