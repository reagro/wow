
create_folders <- function(path, shared_path=path) {
	if (!dir.exists(path)) {
		warning(paste("creating path:", path))
		dir.create(path, FALSE, TRUE)
	}		
	if (!dir.exists(shared_path)) {
		warning(paste("shared path does not exist:", shared_path))	
	}
	rawpath <- file.path(path, "data/raw")
	intpath <- file.path(path, "data/intermediate")
	finpath <- file.path(path, "data/final")
	figpath <- file.path(path, "figures")
	tabpath <- file.path(path, "tables")	
	dir.create(rawpath, FALSE, TRUE)
	dir.create(intpath, FALSE)
	dir.create(finpath, FALSE)
	dir.create(figpath, FALSE)
	dir.create(tabpath, FALSE)
	
	list(root=path, raw=rawpath, interm=intpath, final=finpath, figs=figpath, tables=tabpath, share=shared_path)
}	


