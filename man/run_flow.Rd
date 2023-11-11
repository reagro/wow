\name{run_flow}

\alias{run_flow}

\title{
run a workflow
}

\description{
run a workflow
}

\usage{
run_flow(path=NULL, repo, org, skip=0)
}

\arguments{
  \item{path}{NULL or the local path to the project repo}
  \item{repo}{character. github repo name for the project. Ignored if path is not \code{NULL}}
  \item{org}{character. github org name (if any). Ignored if path is not \code{NULL}}
  \item{skip}{integer. The number of steps to skip in the workflow}
}

\seealso{
\code{\link{make_flow}}
}
