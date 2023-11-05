\name{create_folders}

\alias{create_folders}

\title{
create_folders
}

\description{
create the skeleton folder structure for an wow project workflow
}

\usage{
create_folders(path)
}
 
\arguments{
  \item{path}{base path for the project}
}

\value{
character (invisibly) with the folders created.
}

\examples{
x <- create_folders(file.path(tempdir(), "test"))
x
}


