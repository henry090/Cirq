% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Measure.R
\name{measurement_gate}
\alias{measurement_gate}
\title{MeasurementGate}
\usage{
measurement_gate(num_qubits = NULL, key = "str", invert_mask, qid_shape = NULL)
}
\arguments{
\item{num_qubits}{The number of qubits to act upon.}

\item{key}{The string key of the measurement.}

\item{invert_mask}{A list of values indicating whether the corresponding
qubits should be flipped. The list’s length must not be longer than the
number of qubits, but it is permitted to be shorter. Qubits with indices
past the end of the mask are not flipped.}

\item{qid_shape}{Specifies the dimension of each qid the measurement
applies to. The default is 2 for every qubit.}
}
\value{
a list of operations individually measuring the given qubits.
}
\description{
A gate that measures qubits in the computational basis.
}
\details{
The measurement gate contains a key that is used to identify results
of measurements.
}
\note{
If the length of invert_mask is greater than num_qubits. Or if
the length of qid_shape doesn’t equal num_qubits.
}
\seealso{
Other Measurement: 
\code{\link{measure_each}()},
\code{\link{measure}()}
}
\concept{Measurement}
