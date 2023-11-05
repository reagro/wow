\name{init}

\alias{init}

\title{
init
}

\description{
set up the project in R. This reads "setup.R" from the specified github repo and installs required packages as needed. It returns the root folder for the project. 
}

\usage{
init(repo, org = "", local = NULL)
}
 
\arguments{
  \item{repo}{character. github repo name for the project}
  \item{org}{character. github org name (if any)}
  \item{local}{character or NULL. If not NULL, this should be a local path to "setup.R" that will be used instead of the github repo}
}

\value{
character (invisibly) with the folders created.
}

\examples{
prj_path <- init("RWARAB", "agworkflows")
}


