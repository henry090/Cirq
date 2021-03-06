% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Pauli_Clifford.R
\name{clifford_tableau}
\alias{clifford_tableau}
\title{Clifford Tableau}
\usage{
clifford_tableau(num_qubits, initial_state = 0)
}
\arguments{
\item{num_qubits}{the number of qubits}

\item{initial_state}{the initial state}
}
\description{
Tableau representation of a stabilizer state
}
\details{
(based on Aaronson and Gottesman 2006). The tableau stores the stabilizer generators of
the state using three binary arrays: xs, zs, and rs. Each row of the arrays represents a Pauli string, P, that is
an eigenoperator of the wavefunction with eigenvalue one: P|psi> = |psi>.
}
\seealso{
Other Pauli and Clifford groups: 
\code{\link{clifford_single_qubit_gate}()},
\code{\link{clifford_state}()},
\code{\link{pauli_base_dense_string}()},
\code{\link{pauli_basis}()},
\code{\link{pauli_dense_string}()},
\code{\link{pauli_gate_like}()},
\code{\link{pauli_interaction_gate}()},
\code{\link{pauli_mutable_dense_string}()},
\code{\link{pauli_pow_combination}()},
\code{\link{pauli_string_gate_operation}()},
\code{\link{pauli_string}()},
\code{\link{pauli_sum_like}()},
\code{\link{pauli_sum}()},
\code{\link{pauli_transform}()},
\code{\link{pauli}()}
}
\concept{Pauli and Clifford groups}
