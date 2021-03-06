% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Devices.R
\name{grid_qid}
\alias{grid_qid}
\title{Grid Qid}
\usage{
grid_qid(row, col, dimension)
}
\arguments{
\item{row}{the row coordinate}

\item{col}{the column coordinate}

\item{dimension}{The dimension of the qid, e.g. the number of quantum levels.}
}
\value{
grid qit
}
\description{
A qid on a 2d square lattice
}
\details{
GridQid uses row-major ordering:
GridQid(0, 0, dimension=2) < GridQid(0, 1, dimension=2)
< GridQid(1, 0, dimension=2) < GridQid(1, 1, dimension=2)
New GridQid can be constructed by adding or subtracting lists
grid_qid(2, 3, dimension=2) + (3, 1) grid_qid(5, 4, dimension=2)
grid_qid(2, 3, dimension=2) - (1, 2) grid_qid(1, 1, dimension=2)
}
\seealso{
Other Devices: 
\code{\link{grid_qubit}()},
\code{\link{line_qid}()},
\code{\link{line_qubit}()},
\code{\link{named_qubit}()},
\code{\link{qid}()},
\code{\link{unconstrained_device}()}
}
\concept{Devices}
