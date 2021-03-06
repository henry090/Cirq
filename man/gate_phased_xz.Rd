% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Unitary_Gates.R
\name{gate_phased_xz}
\alias{gate_phased_xz}
\title{Phased XZ Gate}
\usage{
gate_phased_xz(...)
}
\arguments{
\item{...}{parameters to pass.}
}
\value{
None
}
\description{
A single qubit operation expressed as $Z^z Z^a X^x Z^{-a}$.
}
\details{
The above expression is a matrix multiplication with time going to the left.
In quantum circuit notation, this operation decomposes into this circuit:
───Z^(-a)──X^x──Z^a────Z^z───$
The axis phase exponent (a) decides which axis in the XY plane to rotate
around. The amount of rotation around that axis is decided by the x
exponent (x). Then the z exponent (z) decides how much to phase the qubit.
}
\seealso{
Other Unitary gates and operations: 
\code{\link{gate_Gate}()},
\code{\link{gate_ccnot_pow}()},
\code{\link{gate_ccnot}()},
\code{\link{gate_ccx_pow}()},
\code{\link{gate_ccx}()},
\code{\link{gate_ccz_pow}()},
\code{\link{gate_ccz}()},
\code{\link{gate_cnot_pow}()},
\code{\link{gate_cnot}()},
\code{\link{gate_controlled}()},
\code{\link{gate_cs_wap}()},
\code{\link{gate_cx_pow}()},
\code{\link{gate_cx}()},
\code{\link{gate_cz_pow}()},
\code{\link{gate_cz}()},
\code{\link{gate_eigen}()},
\code{\link{gate_fredkin}()},
\code{\link{gate_fsim}()},
\code{\link{gate_givens}()},
\code{\link{gate_global_phase_operation}()},
\code{\link{gate_hpow}()},
\code{\link{gate_h}()},
\code{\link{gate_identity_each}()},
\code{\link{gate_identity}()},
\code{\link{gate_is_wap_pow}()},
\code{\link{gate_iswap}()},
\code{\link{gate_i}()},
\code{\link{gate_matrix}()},
\code{\link{gate_operation}()},
\code{\link{gate_phase_gradient}()},
\code{\link{gate_phased_is_wap_pow}()},
\code{\link{gate_quantum_fourier_transform}()},
\code{\link{gate_riswap}()},
\code{\link{gate_rx}()},
\code{\link{gate_ry}()},
\code{\link{gate_single_qubit}()},
\code{\link{gate_swap_pow}()},
\code{\link{gate_swap}()},
\code{\link{gate_s}()},
\code{\link{gate_tagged_opertaion}()},
\code{\link{gate_three_qubit_diagonal}()},
\code{\link{gate_three_qubit}()},
\code{\link{gate_toffoli}()},
\code{\link{gate_t}()},
\code{\link{gate_wait}()},
\code{\link{gate_x_pow}()},
\code{\link{gate_xx_pow}()},
\code{\link{gate_xx}()},
\code{\link{gate_x}()},
\code{\link{gate_y_pow}()},
\code{\link{gate_yy_pow}()},
\code{\link{gate_yy}()},
\code{\link{gate_y}()},
\code{\link{gate_z_pow}()},
\code{\link{gate_zz_pow}()},
\code{\link{gate_zz}()},
\code{\link{gate_z}()}
}
\concept{Unitary gates and operations}
