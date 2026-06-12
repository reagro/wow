\name{create_folders}

\alias{create_folders}

\title{
create_folders
}

\description{
create the skeleton folder structure for a wow project workflow	
}

\usage{
create_folders(path, shared_path)
}
 
\arguments{
  \item{path}{base path for the project to store the data. A folder "data" will be created and used}
  \item{shared_path}{path to shared data that is used across projects}
}

\value{
list with the paths to the folders created ("data/raw", "data/intermediate", "data/final", "tables", "figures").
}

\examples{
WoW <- create_folders(file.path(tempdir(), "test"))
str(WoW)
}


