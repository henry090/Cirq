% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Qubits.R
\name{qubit_line}
\alias{qubit_line}
\title{Line Qubit}
\usage{
qubit_line(x)
}
\arguments{
\item{x}{a linear array}
}
\description{
A qubit on a 1d lattice with nearest-neighbor connectivity.
}
\details{
LineQubits have a single attribute, and integer coordinate 'x', which
identifies the qubits location on the line. LineQubits are ordered by
this integer. One can construct new LineQubits by adding or subtracting
integers: >>> cirq.LineQubit(1) + 3 cirq.LineQubit(4) >>> cirq.LineQubit(2) - 1 cirq.LineQubit(1)
}
