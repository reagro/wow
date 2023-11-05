\name{install_pkgs}

\alias{install_pkgs}
  

\title{
Install missing packages
}

\description{
Install packages that are needed but perhaps not installed. 
}

\usage{
install_pkgs(x, update=FALSE)
}
 
\arguments{
  \item{x}{character. The packages to install}
  \item{update}{logical. If \code{TRUE} the packages are also updated to the current CRAN version if needed}
}

\value{
none 
}


\examples{
install_pkgs("predicts")
}

