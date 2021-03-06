% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Circuits.R
\name{moment}
\alias{moment}
\title{Moment}
\usage{
moment(...)
}
\arguments{
\item{...}{parameters to pass.}
}
\value{
constructed moment with the given operations.
}
\description{
A time-slice of operations within a circuit.
Grouping operations into moments is intended to be a strong suggestion to
whatever is scheduling operations on real hardware. Operations in the same
moment should execute at the same time (to the extent possible; not all
operations have the same duration) and it is expected that all operations
in a moment should be completed before beginning the next moment.
}
\details{
Moment can be indexed by qubit or list of qubits:
moment[qubit] returns the Operation in the moment which touches the
given qubit, or throws KeyError if there is no such operation.
moment[qubits] returns another Moment which consists only of those
operations which touch at least one of the given qubits. If there
are no such operations, returns an empty Moment.
}
\seealso{
Other Circuits: 
\code{\link{circuit_dag}()},
\code{\link{circuit}()},
\code{\link{gate_operation_}()},
\code{\link{gate_parallel_operation}()},
\code{\link{insert_strategy}()},
\code{\link{qubit_order_or_list}()},
\code{\link{qubit_order}()},
\code{\link{tree_flatten_op}()},
\code{\link{tree_op}()}
}
\concept{Circuits}
