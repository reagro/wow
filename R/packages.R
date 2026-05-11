
install_pkgs <- function(x, update=FALSE) {

	installed <- rownames(utils::installed.packages()) 
	
	gi <- grepl("/", x)
	gh <- x[gi]
	cran <- x[!gi]
	
	if (length(cran) > 0) {
		i <- cran %in% installed
		if (!all(i)) {
			utils::install.packages(cran[!i], repos="https://cloud.r-project.org")
		}
		if (update) {
			utils::update.packages(cran[i], repos="https://cloud.r-project.org", ask=FALSE)
		}
	}
	
	if (length(gh) > 0) {
		if (!("remotes" %in% installed)) {
			utils::install.packages("remotes", repos="https://cloud.r-project.org")
		}
		i <- gh %in% installed
		if (!all(i)) {
			remotes::install_github(gh[!i])
		}
		if (update) {
			remotes::install_github(gh[i])
		}
	}
	invisible()
}

