#' @title Circuit like
#' @family Sampling, Simulations and Data collection
#' @param ... parameters to pass
#' @description A circuits.Circuit or a value that can be
#' trivially converted into it: a gate, an operation,
#' and a list or tree of operations.
#' @return None
#' @export
circuit_like <- function(...) {
  args = list(...)
  if(length(args)==0)
    cirq$CIRCUIT_LIKE
  else
    do.call(cirq$CIRCUIT_LIKE, args)
}




#' @title Random state or seed like
#' @family Sampling, Simulations and Data collection
#' @param ... parameters to pass
#' @description A pseudorandom number generator or object that can
#' be converted to one.
#' @details If NULL, turns into the module np.random.
#'
#' If an integer, turns into a np.random.RandomState seeded with that
#' integer.
#' If none of the above, it is used unmodified. In this case, it is assumed
#' that the object implements whatever methods are required for the use case
#' at hand. For example, it might be an existing instance of
#' np.random.RandomState or a custom pseudorandom number generator
#' implementation.
#' @return None
#' @export
random_state_or_seed_like <- function(...) {
  args = list(...)
  if(length(args)==0)
    cirq$RANDOM_STATE_OR_SEED_LIKE
  else
    do.call(cirq$RANDOM_STATE_OR_SEED_LIKE, args)
}


#' @title Big endian bits to int
#' @family Sampling, Simulations and Data collection
#' @description Returns the big-endian integer specified by the given bits.
#'
#'
#' @param bits Descending bits of the integer, with the 1s bit at the end.
#'
#' @return The integer.
#'
#' @export
big_endian_bits_to_int <- function(bits) {

  cirq$big_endian_bits_to_int(
    bits = bits
  )

}



#' @title Big endian digits to int
#' @family Sampling, Simulations and Data collection
#' @description Returns the big-endian integer specified
#' by the given digits and base.
#'
#'
#' @param digits Digits of the integer, with the least
#' significant digit at the end.
#' @param base The base, or list of per-digit bases, to use
#' when combining the digits into an integer. When a list of
#' bases is specified, the last entry in the list is the base
#' for the last entry of the digits list (i.e. the least
#' significant digit). That is to say, the bases are also
#' specified in big endian order.
#'
#' @return The integer.
#'
#' @section Raises:
#' ValueError: One of the digits is out of range for its base.
#' The base was specified per-digit (as a list) but the length of
#' the bases list is different from the number of digits.
#'
#' @export
big_endian_digits_to_int <- function(digits, base) {

  cirq$big_endian_digits_to_int(
    digits = digits,
    base = as.integer(base)
  )

}




#' @title Big endian int to bits
#' @family Sampling, Simulations and Data collection
#' @description The big-endian bits of an integer.
#'
#'
#' @param val The integer to get bits from. This integer is
#' permitted to be larger than `2**bit_count` (in which case
#' the high bits of the result are dropped) or to be negative
#' (in which case the bits come from the 2s complement signed
#' representation).
#' @param bit_count The number of desired bits in the result.
#'
#' @return The bits.
#'
#'
#' @export
big_endian_int_to_bits <- function(val, bit_count) {

  cirq$big_endian_int_to_bits(
    val = val,
    bit_count = as.integer(bit_count)
  )

}





#' @title Big endian int to digits
#' @family Sampling, Simulations and Data collection
#' @description Separates an integer into big-endian digits.
#'
#'
#' @param val The integer to get digits from. Must be non-negative
#' and less than the maximum representable value, given the
#' specified base(s) and digit count.
#' @param base The base, or list of per-digit bases, to separate
#' val into. When a list of bases is specified, the last entry in
#' the list is the base for the last entry of the result (i.e. the
#' least significant digit). That is to say, the bases are also
#' specified in big endian order.
#' @param digit_count The length of the desired result.
#'
#' @return The list of digits.
#'
#' @section Raises:
#' ValueError: Unknown digit count. The `base` was specified as
#' an integer and a `digit_count` was not provided. Inconsistent
#' digit count. The `base` was specified as a per-digit list, and
#' `digit_count` was also provided, but they disagree.
#'
#'
#' @export
big_endian_int_to_digits <- function(val,base,digit_count) {

  cirq$big_endian_int_to_digits(
    val = val,
    base = as.integer(base),
    digit_count = as.integer(digit_count)
  )

}




#' @title Final density matrix
#' @family Sampling, Simulations and Data collection
#' @description Returns the density matrix resulting from
#' simulating the circuit.
#'
#' @details Note that, unlike `cirq.final_wavefunction`, terminal measurements
#' are not omitted. Instead, all measurements are treated as sources
#' of decoherence (i.e. measurements do not collapse, they dephase). See
#' ignore_measurement_results for details.
#'
#' @param program The circuit, gate, operation, or tree of
#' operations to apply to the initial state in order to produce
#' the result.
#' @param noise Noise model to use while running the simulation.
#' @param param_resolver Parameters to run with the program.
#'
#' @param qubit_order Determines the canonical ordering of the qubits.
#' This is often used in specifying the initial state, i.e. the
#' ordering of the computational basis states.
#'
#' @param initial_state If an int, the state is set to the
#' computational basis state corresponding to this state. Otherwise
#' if this is a np.ndarray it is the full initial state. In this case
#' it must be the correct size, be normalized (an L2 norm of 1), and
#' be safely castable to an appropriate dtype for the simulator.
#'
#' @param dtype The numpy.dtype used by the simulation.
#' Typically one of numpy.complex64 or numpy.complex128.
#'
#' @param seed The random seed to use for this simulator.
#'
#' @param ignore_measurement_results Defaults to True. When TRUE,
#' the returned density matrix is not conditioned on any measurement
#' results. For example, this effectively replaces computational basis
#' measurement with dephasing noise. The result density matrix in this
#' case should be unique. When False, the result will be conditioned on
#' sampled (but unreported) measurement results. In this case the result
#' may vary from call to call.
#'
#' @return The density matrix for the state which results from
#' applying the given operations to the desired initial state.
#'
#' @export
final_density_matrix <- function(program, noise, param_resolver, qubit_order,
                                 initial_state, dtype, seed, ignore_measurement_results) {

  cirq$final_density_matrix(
    program = program, noise = noise,
    param_resolver = param_resolver,
    qubit_order = qubit_order,
    initial_state = initial_state, dtype = dtype,
    seed = as.integer(seed),
    ignore_measurement_results = ignore_measurement_results
  )

}



#' @title Final wavefunction
#' @family Sampling, Simulations and Data collection
#' @description Returns the state vector resulting from
#' acting operations on a state.
#'
#' @details By default the input state is the computational
#' basis zero state, in which
#' case the output is just the first column of the implied
#' unitary matrix.
#'
#' @param program The circuit, gate, operation, or tree of
#' operations to apply to the initial state in order to
#' produce the result.
#'
#' @param ... additional parameters to pass.
#' @return The wavefunction resulting from applying the given
#' unitary operations to the desired initial state. Specifically,
#' a numpy array containing the the amplitudes in np.kron order,
#' where the order of arguments to kron is determined by the qubit
#' order argument (which defaults to just sorting the qubits that
#' are present into an ascending order).
#'
#' @export
final_wavefunction <- function(program,...) {

  cirq$final_wavefunction(
    program = program,
    ...
  )

}




#' @title Flatten
#' @family Sampling, Simulations and Data collection
#' @description Creates a copy of `val` with any symbols or
#' expressions replaced with new symbols. `val` can be a `Circuit`, `Gate`, `Operation`, or other
#' type.
#'
#' @details `flatten` goes through every parameter in `val` and does the following:
#' - If the parameter is a number, don't change it.
#' - If the parameter is a symbol, don't change it.
#' - If the parameter is an expression, replace it with a symbol. The new symbol will be
#' `sympy.Symbol('<x + 1>')` if the expression was `sympy.Symbol('x') + 1`.
#' In the unlikely case that an expression with a different meaning also has the
#' string `'x + 1'`, a number is appended to the name to avoid collision:
#' `sympy.Symbol('<x + 1>_1')`. This function also creates a dictionary
#' mapping from expressions and symbols
#' in `val` to the new symbols in the flattened copy of `val`. E.g
#' `cirq.ExpressionMap({sympy.Symbol('x')+1: sympy.Symbol('<x + 1>')})`. This
#' `ExpressionMap` can be used to transform a sweep over the symbols in `val`
#' to a sweep over the flattened symbols e.g. a sweep over `sympy.Symbol('x')`
#' to a sweep over `sympy.Symbol('<x + 1>')`.
#'
#' @param val The value to copy and substitute parameter expressions with flattened symbols.
#' @param ... additional parameters to pass.
#'
#' @return The list (new value, expression map) where new value and expression map are described above.
#'
#' @export
flatten <- function(val, ...) {

  cirq$flatten(
    val = val,
    ...
  )

}



#' @title Flatten to ops
#' @family Sampling, Simulations and Data collection
#' @description Performs an in-order iteration of the operations
#' (leaves) in an OP_TREE.
#'
#'
#' @param root The operation or tree of operations to iterate.
#'
#' @section Yields:
#' Operations or moments from the tree.
#'
#' @section Raises:
#' TypeError: root isn't a valid OP_TREE.
#' @return None
#' @export
flatten_to_ops <- function(root) {

  cirq$flatten_to_ops(
    root = root
  )

}





#' @title Flatten to ops or moments
#' @family Sampling, Simulations and Data collection
#' @description Performs an in-order iteration OP_TREE,
#' yielding ops and moments.
#'
#'
#' @param root The operation or tree of operations to iterate.
#'
#' @section Yields:
#' Operations or moments from the tree.
#'
#' @section Raises:
#' TypeError: root isn't a valid OP_TREE.
#' @return None
#' @export
flatten_to_ops_or_moments <- function(root) {

  cirq$flatten_to_ops_or_moments(
    root = root
  )

}



#' @title Flatten with params
#' @family Sampling, Simulations and Data collection
#' @description Creates a copy of `val` with any symbols or
#' expressions replaced with new symbols.
#'
#' @details `val` can be a `Circuit`, `Gate`, `Operation`, or other
#' type. Also transforms a dictionary of symbol values for `val` to an
#' equivalent dictionary mapping the new symbols to their evaluated values.
#' `flatten_with_params` goes through every parameter in `val` and does the
#' following:
#' - If the parameter is a number, don't change it.
#' - If the parameter is a symbol, don't change it and use the same symbol
#' with the same value in the new dictionary of symbol values.
#' - If the parameter is an expression, replace it with a symbol and use
#' the new symbol with the evaluated value of the expression in the new
#' dictionary of symbol values. The new symbol will be `sympy.Symbol('<x + 1>')`
#' if the expression was `sympy.Symbol('x') + 1`. In the unlikely case that an
#' expression with a different meaning also has the string `'x + 1'`, a number
#' is appended to the name to avoid collision: `sympy.Symbol('<x + 1>_1')`.
#'
#' @param val The value to copy and substitute parameter expressions with
#' flattened symbols.
#' @param params A dictionary or `ParamResolver` where the keys are
#' `sympy.Symbol`s used by `val` and the values are numbers.
#' @param ... additional parameters to pass.
#'
#' @return The list (new value, new params) where new value is `val` with
#' flattened expressions and new params is a dictionary mapping the new
#' symbols like `sympy.Symbol('<x + 1>')` to numbers like `params['x'] + 1`.
#'
#' @section following:
#' - If the parameter is a number, don't change it. - If the parameter is a
#' symbol, don't change it and use the same symbol with the same value in the
#' new dictionary of symbol values. - If the parameter is an expression, replace
#' it with a symbol and use the new symbol with the evaluated value of the
#' expression in the new dictionary of symbol values. The new symbol will
#' be `sympy.Symbol('<x + 1>')` if the expression was `sympy.Symbol('x') + 1`.
#' In the unlikely case that an expression with a different meaning also has
#' the string `'x + 1'`, a number is appended to the name to avoid
#' collision: `sympy.Symbol('<x + 1>_1')`.
#'
#' @export
flatten_with_params <- function(val, ..., params) {

  cirq$flatten_with_params(
    val = val,
    ...,
    params = params
  )

}


#' @title Flatten with sweep
#' @family Sampling, Simulations and Data collection
#' @description Creates a copy of `val` with any symbols or expressions replaced with
#'
#' @details new symbols. `val` can be a `Circuit`, `Gate`, `Operation`, or other
#' type. Also transforms a sweep over the symbols in `val` to a sweep over the
#' new symbols. `flatten_with_sweep` goes through every parameter in `val` and does the
#' following:
#' - If the parameter is a number, don't change it.
#' - If the parameter is a symbol, don't change it and use the same symbol
#' with the same values in the new sweep.
#' - If the parameter is an expression, replace it with a symbol and use the
#' new symbol with the evaluated value of the expression in the new sweep. The
#' new symbol will be `sympy.Symbol('<x + 1>')` if the expression
#' was `sympy.Symbol('x') + 1`. In the unlikely case that an expression
#' with a different meaning also has the string `'x + 1'`, a number is
#' appended to the name to avoid collision: `sympy.Symbol('<x + 1>_1')`.
#'
#' @param val The value to copy and substitute parameter expressions with flattened symbols.
#' @param sweep A sweep over parameters used by `val`.
#'
#' @return The list (new value, new sweep) where new value is `val` with
#' flattened expressions and new sweep is the equivalent sweep over it.
#'
#' @section following:
#' - If the parameter is a number, don't change it. - If the parameter is
#' a symbol, don't change it and use the same symbol with the same values
#' in the new sweep. - If the parameter is an expression, replace it with
#' a symbol and use the new symbol with the evaluated value of the expression
#' in the new sweep. The new symbol will be `sympy.Symbol('<x + 1>')` if the
#' expression was `sympy.Symbol('x') + 1`. In the unlikely case that an expression
#' with a different meaning also has the string `'x + 1'`, a number is appended to
#' the name to avoid collision: `sympy.Symbol('<x + 1>_1')`.
#'
#' @export
flatten_with_sweep <- function(val, sweep) {

  args = list(
    val = val,
    sweep = sweep
  )

  do.call(cirq$flatten_with_sweep,args)

}





#' @title Hog score xeb fidelity from probabilities
#' @family Sampling, Simulations and Data collection
#' @description XEB fidelity estimator based on normalized HOG score.
#'
#' @details Estimates fidelity from ideal probabilities of observed bitstrings.
#' See `linear_xeb_fidelity_from_probabilities` for the assumptions made
#' by this estimator. The mean of this estimator is the true fidelity f and the
#' variance is (1/log(2)^2 - f^2) / M where f is the fidelity and M the number
#' of observations, equal to
#' len(probabilities). This is always worse than log XEB (see above).
#' Since this estimator is unbiased, the variance is equal to the mean
#' squared error of the estimator. The estimator is intended for use with xeb_fidelity() below. It is
#' based on the HOG problem defined in https://arxiv.org/abs/1612.05903.
#'
#' @param hilbert_space_dimension Dimension of the Hilbert space on
#' which the channel whose fidelity is being estimated is defined.
#' @param probabilities Ideal probabilities of bitstrings observed
#' in experiment. Returns: Estimate of fidelity associated with an
#' experimental realization of a quantum circuit.
#'
#' @return Estimate of fidelity associated with an experimental realization of a quantum circuit.
#'
#' @export
hog_score_xeb_fidelity_from_probabilities <- function(hilbert_space_dimension, probabilities) {

  args <- list(
    hilbert_space_dimension = hilbert_space_dimension,
    probabilities = probabilities
  )

  do.call(cirq$hog_score_xeb_fidelity_from_probabilities, args)

}





#' @title Measure density matrix
#' @family Sampling, Simulations and Data collection
#' @description Performs a measurement of the density matrix in the computational basis.
#'
#' @details This does not modify `density_matrix` unless the optional `out` is
#' `density_matrix`.
#'
#' @param density_matrix The density matrix to be measured. This matrix is
#' assumed to be positive semidefinite and trace one. The matrix is assumed
#' to be of shape `(2 ** integer, 2 ** integer)` or `(2, 2, ..., 2)`.
#' @param indices Which qubits are measured. The matrix is assumed to be
#' supplied in big endian order. That is the xth index of v, when expressed
#' as a bitstring, has the largest values in the 0th index.
#' @param qid_shape The qid shape of the density matrix. Specify this argument
#' when using qudits.
#' @param out An optional place to store the result. If `out` is the same as
#' the `density_matrix` parameter, then `density_matrix` will be modified inline.
#' If `out` is not NULL, then the result is put into `out`. If `out` is NULL a new
#' value will be allocated. In all of these cases `out` will be the same as the
#' returned ndarray of the method. The shape and dtype of `out` will match that
#' of `density_matrix` if `out` is NULL, otherwise it will match the shape and dtype of `out`.
#' @param seed A seed for the pseudorandom number generator.
#'
#' @return A list of a list and an numpy array. The list is an array of booleans
#' corresponding to the measurement values (ordered by the indices). The numpy array
#' is the post measurement matrix. This matrix has the same shape and dtype as the input matrix.
#'
#' @section Raises:
#' ValueError if the dimension of the matrix is not compatible with a matrix of n qubits. IndexError if the indices are out of range for the number of qubits corresponding to the density matrix.
#'
#' @export
measure_density_matrix <- function(density_matrix, indices, qid_shape = NULL, out = NULL, seed = NULL) {

  args<- list(
    density_matrix = density_matrix,
    indices = indices,
    qid_shape = qid_shape,
    out = out,
    seed = seed
  )

  if(!is.null(seed))
    args$seed <- as.integer(args$seed)

  do.call(cirq$measure_density_matrix, args)

}





#' @title Measure state vector
#' @family Sampling, Simulations and Data collection
#' @description Performs a measurement of the state in the computational basis.
#'
#' @details This does not modify `state` unless the optional `out` is `state`.
#'
#' @param state The state to be measured. This state is assumed to be normalized.
#' The state must be of size 2 `**` integer. The state can be of
#' shape `(2 ** integer)` or (2, 2, ..., 2).
#' @param indices Which qubits are measured. The state is assumed to be
#' supplied in big endian order. That is the xth index of v, when expressed
#' as a bitstring, has the largest values in the 0th index.
#'
#' @param ... additional parameters to pass.
#'
#' @return A list of a list and an numpy array. The list is an array of booleans
#' corresponding to the measurement values (ordered by the indices). The numpy array
#' is the post measurement state. This state has the same shape and dtype as the input state.
#'
#' @section Raises:
#' ValueError if the size of state is not a power of 2.
#' IndexError if the indices are out of range for the number
#' of qubits corresponding to the state.
#'
#' @export
measure_state_vector <- function(state, indices,...) {

  args <- list(
    state = state,
    indices = indices,
    ...
  )

  do.call(cirq$measure_state_vector, args)

}




#' @title Sample
#' @family Sampling, Simulations and Data collection
#' @description Simulates sampling from the given circuit.
#'
#' @param ... additional parameters to pass.
#' @param program The circuit to sample from.
#'
#' @export
sample <- function(program, ...) {

  args = list(
    program = program,
    ...
  )

  do.call(cirq$sample, args)

}



#' @title Sample density matrix
#' @family Sampling, Simulations and Data collection
#' @description Samples repeatedly from measurements in the computational basis.
#'
#' @details Note that this does not modify the density_matrix.
#'
#' @param density_matrix The density matrix to be measured. This matrix is
#' assumed to be positive semidefinite and trace one. The matrix is assumed
#' to be of shape `(2 ** integer, 2 ** integer)` or (2, 2, ..., 2).
#' @param indices Which qubits are measured. The density matrix rows and
#' columns are assumed to be supplied in big endian order. That is the xth
#' index of v, when expressed as a bitstring, has its largest values in the 0th index.
#'
#' @return Measurement results with TRUE corresponding to the ``|1⟩`` state.
#' The outer list is for repetitions, and the inner corresponds to measurements
#' ordered by the supplied qubits. These lists are wrapped as an numpy ndarray.
#'
#' @section Raises:
#' ValueError: ``repetitions`` is less than one or size of ``matrix`` is not a
#' power of 2. IndexError: An index from ``indices`` is out of range, given the
#' number of qubits corresponding to the density matrix.
#'
#' @export
sample_density_matrix <- function(density_matrix, indices) {

  args <- list(
    density_matrix = density_matrix,
    indices = indices
  )

  do.call(cirq$sample_density_matrix, args)

}



#' @title Sample state vector
#' @family Sampling, Simulations and Data collection
#' @description Samples repeatedly from measurements in the computational basis.
#'
#' @details Note that this does not modify the passed in state.
#'
#' @param state The multi-qubit wavefunction to be sampled. This is an array of
#' 2 to the power of the number of qubit complex numbers, and so state must be of
#' size ``2**integer``. The state can be a vector of size ``2**integer`` or a
#' tensor of shape ``(2, 2, ..., 2)``.
#' @param indices Which qubits are measured. The state is assumed to be supplied
#' in big endian order. That is the xth index of v, when expressed as a bitstring,
#' has its largest values in the 0th index.
#'
#' @return Measurement results with TRUE corresponding to the ``|1⟩`` state. The outer
#' list is for repetitions, and the inner corresponds to measurements ordered by the
#' supplied qubits. These lists are wrapped as an numpy ndarray.
#'
#' @section Raises:
#' ValueError: ``repetitions`` is less than one or size of ``state`` is not
#' a power of 2. IndexError: An index from ``indices`` is out of range, given the
#' number of qubits corresponding to the state.
#'
#' @export
sample_state_vector <- function(state, indices) {

  args <- list(
    state = state,
    indices = indices
  )

  do.call(cirq$sample_state_vector, args)

}



#' @title Sample sweep
#' @family Sampling, Simulations and Data collection
#' @description Runs the supplied Circuit, mimicking quantum hardware.
#'
#' @details In contrast to run, this allows for sweeping over different parameter
#' values.
#'
#' @param program The circuit to simulate.
#' @param params Parameters to run with the program.
#'
#' @return TrialResult list for this run; one for each possible parameter resolver.
#'
#' @export
sample_sweep <- function(program, params) {

  args<- list(
    program = program,
    params = params
  )

  do.call(cirq$sample_sweep, args)

}


#' @title To resolvers
#' @family Sampling, Simulations and Data collection
#' @description Convert a Sweepable to a list of ParamResolvers.
#'
#'
#' @param sweepable sweepable parameter
#' @return None
#' @export
to_resolvers <- function(sweepable) {

  cirq$to_resolvers(
    sweepable = sweepable
  )

}


#' @title To sweep
#' @family Sampling, Simulations and Data collection
#' @description Converts the argument into a ``cirq.Sweep``.
#'
#'
#' @param sweep_or_resolver_list The object to try to turn into a
#' ```cirq.Sweep``` . A ``cirq.Sweep``, a single ``cirq.ParamResolver``,
#' or a list of ``cirq.ParamResolver`` s.
#'
#' @return A sweep equal to or containing the argument.
#'
#' @export
to_sweep <- function(sweep_or_resolver_list) {

  cirq$to_sweep(
    sweep_or_resolver_list = sweep_or_resolver_list
  )

}


#' @title Validate mixture
#' @family Sampling, Simulations and Data collection
#' @description Validates that the mixture's list are valid probabilities.
#'
#'
#' @param supports_mixture supports_mixture
#' @return None
#' @export
validate_mixture <- function(supports_mixture) {

  cirq$validate_mixture(
    supports_mixture = supports_mixture
  )

}





#' @title Validate probability
#'
#' @description Validates that a probability is between 0 and 1 inclusively.
#'
#'
#' @param p The value to validate.
#' @param p_str What to call the probability in error messages.
#'
#' @return The probability p if the probability if valid.
#'
#' @section Raises:
#' ValueError if the probability is invalid.
#'
#' @export
validate_probability <- function(p, p_str) {

  cirq$validate_probability(
    p = p,
    p_str = p_str
  )

}





#' @title Xeb fidelity
#'
#' @description Estimates XEB fidelity from one circuit using user-supplied estimator.
#'
#' @details Fidelity quantifies the similarity of two quantum states. Here, we estimate
#' the fidelity between the theoretically predicted output state of circuit and
#' the state producted in its experimental realization. Note that we don't know
#' the latter state. Nevertheless, we can estimate the fidelity between the two
#' states from the knowledge of the bitstrings observed in the experiment.
#' In order to make the estimate more robust one should average the estimates
#' over many random circuits. The API supports per-circuit fidelity estimation
#' to enable users to examine the properties of estimate distribution over
#' many circuits. See https://arxiv.org/abs/1608.00263 for more details.
#'
#' @param circuit Random quantum circuit which has been executed on quantum processor under test.
#' @param bitstrings Results of terminal all-qubit measurements performed after
#' each circuit execution as integer array where each integer is formed from
#' measured qubit values according to `qubit_order` from most to least significant
#' qubit, i.e. in the order consistent with `cirq.final_wavefunction`.
#' @param qubit_order Qubit order used to construct bitstrings enumerating qubits
#' starting with the most sigificant qubit.
#' @param amplitudes Optional mapping from bitstring to output amplitude. If provided,
#' simulation is skipped. Useful for large circuits when an offline simulation
#' had already been peformed.
#' @param estimator Fidelity estimator to use, see above. Defaults to the linear
#' XEB fidelity estimator. Returns: Estimate of fidelity associated with an experimental
#' realization of circuit which yielded measurements in bitstrings. Raises:
#'
#' @return Estimate of fidelity associated with an experimental realization of
#' circuit which yielded measurements in bitstrings. Raises: ValueError: Circuit
#' is inconsistent with qubit order or one of the bitstrings is inconsistent with the number of qubits.
#'
#' @section Raises:
#' ValueError: Circuit is inconsistent with
#' qubit order or one of the bitstrings is inconsistent with the number of qubits.
#'
#' @export
xeb_fidelity <- function(circuit, bitstrings, qubit_order, amplitudes = NULL,
                         estimator) {

  cirq$xeb_fidelity(
    circuit = circuit,
    bitstrings = bitstrings,
    qubit_order = qubit_order,
    amplitudes = amplitudes,
    estimator = estimator
  )

}




