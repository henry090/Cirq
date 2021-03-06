% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sampling_simulations.R
\name{flatten_with_sweep}
\alias{flatten_with_sweep}
\title{Flatten with sweep}
\usage{
flatten_with_sweep(val, sweep)
}
\arguments{
\item{val}{The value to copy and substitute parameter expressions with flattened symbols.}

\item{sweep}{A sweep over parameters used by `val`.}
}
\value{
The list (new value, new sweep) where new value is `val` with
flattened expressions and new sweep is the equivalent sweep over it.
}
\description{
Creates a copy of `val` with any symbols or expressions replaced with
}
\details{
new symbols. `val` can be a `Circuit`, `Gate`, `Operation`, or other
type. Also transforms a sweep over the symbols in `val` to a sweep over the
new symbols. `flatten_with_sweep` goes through every parameter in `val` and does the
following:
- If the parameter is a number, don't change it.
- If the parameter is a symbol, don't change it and use the same symbol
with the same values in the new sweep.
- If the parameter is an expression, replace it with a symbol and use the
new symbol with the evaluated value of the expression in the new sweep. The
new symbol will be `sympy.Symbol('<x + 1>')` if the expression
was `sympy.Symbol('x') + 1`. In the unlikely case that an expression
with a different meaning also has the string `'x + 1'`, a number is
appended to the name to avoid collision: `sympy.Symbol('<x + 1>_1')`.
}
\section{following}{

- If the parameter is a number, don't change it. - If the parameter is
a symbol, don't change it and use the same symbol with the same values
in the new sweep. - If the parameter is an expression, replace it with
a symbol and use the new symbol with the evaluated value of the expression
in the new sweep. The new symbol will be `sympy.Symbol('<x + 1>')` if the
expression was `sympy.Symbol('x') + 1`. In the unlikely case that an expression
with a different meaning also has the string `'x + 1'`, a number is appended to
the name to avoid collision: `sympy.Symbol('<x + 1>_1')`.
}

\seealso{
Other Sampling, Simulations and Data collection: 
\code{\link{big_endian_bits_to_int}()},
\code{\link{big_endian_digits_to_int}()},
\code{\link{big_endian_int_to_bits}()},
\code{\link{big_endian_int_to_digits}()},
\code{\link{circuit_like}()},
\code{\link{final_density_matrix}()},
\code{\link{final_wavefunction}()},
\code{\link{flatten_to_ops_or_moments}()},
\code{\link{flatten_to_ops}()},
\code{\link{flatten_with_params}()},
\code{\link{flatten}()},
\code{\link{hog_score_xeb_fidelity_from_probabilities}()},
\code{\link{measure_density_matrix}()},
\code{\link{measure_state_vector}()},
\code{\link{random_state_or_seed_like}()},
\code{\link{sample_density_matrix}()},
\code{\link{sample_state_vector}()},
\code{\link{sample_sweep}()},
\code{\link{sample}()},
\code{\link{to_resolvers}()},
\code{\link{to_sweep}()},
\code{\link{validate_mixture}()}
}
\concept{Sampling, Simulations and Data collection}
