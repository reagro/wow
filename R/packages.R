
install_pkgs <- function(x, update=FALSE) {
	i <- x %in% rownames(utils::installed.packages())
	if (!all(i)) {
		utils::install.packages(x[!i], repos="https://cloud.r-project.org")
	}
	if (update) {
		utils::update.packages(x[i], repos="https://cloud.r-project.org", ask=FALSE)
	}
	invisible()
}

