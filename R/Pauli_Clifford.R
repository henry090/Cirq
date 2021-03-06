#' @title PAULI BASIS
#' @family Pauli and Clifford groups
#' @description The four Pauli matrices (including identity) keyed by character.
#'
#' @return a named list with 4 matrices: I, X, Y, and Z.
#' @export
pauli_basis <- function() {
  cirq$PAULI_BASIS
}


#' @title PAULI GATE LIKE
#' @family Pauli and Clifford groups
#' @description An object that can be interpreted as a Pauli gate.
#' @details Allowed values are:
#' 1. Cirq gates: cirq.I, cirq.X, cirq.Y, cirq.Z.
#' 2. Strings: “I”, “X”, “Y”, “Z”. Equivalently “i”, “x”, “y”, “z”.
#' 3. Integers from 0 to 3, with the convention 0=I, 1=X, 2=Y, 3=Z.
#' @param ... parameters to pass.
#' @return a pauli gate object.
#' @export
pauli_gate_like <- function(...) {
  args = list(...)
  if(length(args)==0)
    cirq$PAULI_GATE_LIKE
  else
    do.call(cirq$PAULI_GATE_LIKE,args)
}





#' @title PAULI STRING LIKE
#' @family Pauli and Clifford groups
#' @description A cirq.PauliString or a value that can easily be converted into one.
#' @details Dictionaries from qubit to Pauli operation are wrapped into a Pauli string.
#' Each Pauli operation can be specified as a cirq object (e.g. cirq.X) or as
#' a string (e.g. "X") or as an integer where 0=I, 1=X, 2=Y, 3=Z.
#' @param ... parameters to pass.
#' @return Collections of Pauli operations are recrusively multiplied into a single Pauli string.
#' @export
pauli_gate_like <- function(...) {
  args = list(...)
  if(length(args)==0)
    cirq$PAULI_GATE_LIKE
  else
    do.call(cirq$PAULI_GATE_LIKE,args)
}



#' @title pow_pauli_combination
#' @family Pauli and Clifford groups
#' @description Computes non-negative integer power of single-qubit Pauli combination.
#'
#' @return Returns scalar coefficients bi, bx, by, bz such that
#' bi I + bx X + by Y + bz Z = (ai I + ax X + ay Y + az Z)^exponent
#' Correctness of the formulas below follows from the binomial expansion
#' and the fact that for any real or complex vector (ax, ay, az) and any
#' non-negative integer k: [ax X + ay Y + az Z]^(2k) = (ax^2 + ay^2 + az^2)^k I
#'
#' @param ai ai
#' @param ax ax
#' @param ay ay
#' @param az az
#' @param exponent exponent
#'
#' @export
pauli_pow_combination <- function(ai, ax, ay, az, exponent) {

  cirq$pow_pauli_combination(
    ai = ai,
    ax = ax,
    ay = ay,
    az = az,
    exponent = exponent
  )

}


#' @title BaseDensePauliString
#' @family Pauli and Clifford groups
#' @description Parent class for `DensePauliString` and
#' `MutableDensePauliString`.
#'
#'
#' @param pauli_mask A specification of the Pauli gates to use.
#' This argument can be a string like “IXYYZ”, or a numeric list
#' like [0, 1, 3, 2] with I=0, X=1, Y=2, Z=3=X|Y.
#' The internal representation is a 1-dimensional uint8 numpy array
#' containing numeric values. If such a numpy array is given, and the
#' pauli string is mutable, the argument will be used directly
#' instead of being copied.
#' @param coefficient A complex number. Usually +1, -1, 1j, or -1j but other values are supported.
#'
#' @export
pauli_base_dense_string <- function(pauli_mask,coefficient) {

  if(missing(pauli_mask))
    cirq$BaseDensePauliString
  else
    cirq$BaseDensePauliString(
      pauli_mask = pauli_mask,
      coefficient = coefficient
    )

}



#' @title Clifford State
#' @family Pauli and Clifford groups
#' @description A state of the Clifford simulation.
#'
#' @details The state is stored using two complementary representations:
#' Anderson's tableaux form and Bravyi's CH-form.
#' The tableaux keeps track of the stabilizer operations, while the
#' CH-form allows access to the full wavefunction (including phase).
#' Gates and measurements are applied to each representation in O(n^2) time.
#'
#' @param qubit_map mapped qubits
#' @param initial_state the initial state
#'
#' @section The state is stored using two complementary representations:
#' Anderson's tableaux form and Bravyi's CH-form. The tableaux keeps track
#' of the stabilizer operations, while the CH-form allows access to the full
#' wavefunction (including phase).
#'
#' @export
clifford_state <- function(qubit_map, initial_state = 0) {

  if(missing(qubit_map))
    cirq$CliffordState
  else
    cirq$CliffordState(
      qubit_map = qubit_map,
      initial_state = as.integer(initial_state)
    )

}



#' @title Clifford Tableau
#' @family Pauli and Clifford groups
#' @description Tableau representation of a stabilizer state
#'
#' @details (based on Aaronson and Gottesman 2006). The tableau stores the stabilizer generators of
#' the state using three binary arrays: xs, zs, and rs. Each row of the arrays represents a Pauli string, P, that is
#' an eigenoperator of the wavefunction with eigenvalue one: P|psi> = |psi>.
#'
#' @param num_qubits the number of qubits
#' @param initial_state the initial state
#'
#' @export
clifford_tableau <- function(num_qubits, initial_state = 0) {

  if(missing(num_qubits))
    cirq$CliffordTableau
  else
    cirq$CliffordTableau(
      num_qubits = num_qubits,
      initial_state = as.integer(initial_state)
    )

}


#' @title Dense Pauli String
#'
#' @description Parent class for `DensePauliString` and `MutableDensePauliString`.
#'
#' @family Pauli and Clifford groups
#' @param pauli_mask A specification of the Pauli gates to use. This argument
#' can be a string like “IXYYZ”, or a numeric list like [0, 1, 3, 2] with I=0,
#' X=1, Y=2, Z=3=X|Y.
#' The internal representation is a 1-dimensional uint8 numpy array containing
#' numeric values. If such a numpy array is given, and the pauli string is mutable,
#' the argument will be used directly instead of being copied.
#' @param coefficient A complex number. Usually +1, -1, 1j, or -1j but other values are supported.
#' @return a pauli object
#' @export
pauli_dense_string <- function(pauli_mask, coefficient) {

    if(missing(pauli_mask) & missing(coefficient))
      cirq$DensePauliString
    else
      cirq$DensePauliString(
        pauli_mask = pauli_mask,
        coefficient = coefficient
      )

}


#' @title Mutable Dense Pauli String
#'
#' @description Parent class for `DensePauliString` and `MutableDensePauliString`.
#'
#'
#' @family Pauli and Clifford groups
#' @param pauli_mask A specification of the Pauli gates to use. This argument
#' can be a string like “IXYYZ”, or a numeric list like [0, 1, 3, 2] with I=0,
#' X=1, Y=2, Z=3=X|Y.
#' The internal representation is a 1-dimensional uint8 numpy array containing
#' numeric values. If such a numpy array is given, and the pauli string is mutable,
#' the argument will be used directly instead of being copied.
#' @param coefficient A complex number. Usually +1, -1, 1j, or -1j but other values are supported.
#' @return a pauli object
#' @export
pauli_mutable_dense_string <- function(pauli_mask, coefficient) {

  if(missing(pauli_mask) & missing(coefficient))
    cirq$MutableDensePauliString
  else
    cirq$MutableDensePauliString(
      pauli_mask = pauli_mask,
      coefficient = coefficient
    )
}


#' @title Pauli
#'
#' @description Represents the Pauli gates.
#'
#' @details This is an abstract class with no public subclasses. The only instances
#' of private subclasses are the X, Y, or Z Pauli gates defined below.
#' @family Pauli and Clifford groups
#' @param index the index
#' @param name the name of op
#' @return a pauli object.
#' @export
pauli <- function(index, name) {

  if(missing(index) & missing(name))
    cirq$Pauli
  else
    cirq$Pauli(
      index = index,
      name = name
    )

}



#' @title Pauli Interaction Gate
#'
#' @description A CZ conjugated by arbitrary single qubit Cliffords.
#' @family Pauli and Clifford groups
#'
#' @param pauli0 The interaction axis for the first qubit.
#' @param invert0 bool. Whether to condition on the +1 or -1
#' eigenvector of the first qubit’s interaction axis.
#' @param pauli1 The interaction axis for the second qubit.
#' @param invert1 bool. Whether to condition on the +1 or -1
#' eigenvector of the second qubit’s interaction axis.
#' @param exponent float. Determines the amount of phasing to
#' apply to the vector equal to the tensor product of the two conditions.
#'
#' @export
pauli_interaction_gate <- function(pauli0, invert0, pauli1, invert1, exponent) {

  if(missing(pauli0) & missing(invert0) & missing(pauli1) & missing(invert1) & missing(exponent))
    cirq$PauliInteractionGate
  else
    cirq$PauliInteractionGate(
      pauli0 = pauli0,
      invert0 = invert0,
      pauli1 = pauli1,
      invert1 = invert1,
      exponent = exponent
    )
}



#' @title Pauli String
#' @family Pauli and Clifford groups
#' @description Initializes a new PauliString.
#'
#'
#' @param ... parameters to pass:
#' - `*contents` A value or values to convert into a pauli string.
#' This can be a number, a pauli operation, a dictionary from qubit
#' to pauli/identity gates, or collections thereof. If a list of values
#' is given, they are each individually converted and then multiplied
#' from left to right in order.
#' - qubit_pauli_map Initial dictionary mapping qubits to pauli
#' operations. Defaults to the empty dictionary. Note that, unlike
#' dictionaries passed to contents, this dictionary must not contain any
#' identity gate values. Further note that this argument specifies values
#' that are logically before factors specified in contents; contents are
#' right multiplied onto the values in this dictionary.
#' - coefficient Initial scalar coefficient. Defaults to 1.
#' @return a pauli string object.
#' @export
pauli_string <- function(...) {

  args = list(...)

  if(length(args)==0)
    cirq$PauliString
  else
    do.call(cirq$PauliString, args)

}





#' @title Pauli String Gate Operation
#' @family Pauli and Clifford groups
#' @description An effect applied to a collection of qubits.
#'
#' @details The most common kind of Operation is a GateOperation, which separates its
#' effect into a qubit-independent Gate and the qubits it should be applied to.
#'
#' @param pauli_string pauli_string object from function `pauli_string()`
#' @return an operation with pauli string
#' @export
pauli_string_gate_operation <- function(pauli_string) {

  if(missing(pauli_string))
    cirq$PauliStringGateOperation
  else
    cirq$PauliStringGateOperation(
      pauli_string = pauli_string
    )

}



#' @title Pauli Sum
#' @family Pauli and Clifford groups
#' @description Represents operator defined by linear combination of PauliStrings.
#'
#' @details Since PauliStrings store their own coefficients, this class
#' does not implement the LinearDict interface. Instead, you can
#' add and subtract terms and then iterate over the resulting
#' (simplified) expression.
#'
#' @param linear_dict Under the hood, this class is backed by a LinearDict with coefficient-less
#' PauliStrings as keys. PauliStrings are reconstructed on-the-fly during
#' iteration. PauliStrings are reconstructed on-the-fly during
#' iteration.
#' @return an operation with pauli sum
#' @export
pauli_sum <- function(linear_dict = NULL) {

  if(missing(pauli_string))
    cirq$PauliSum
  else
    cirq$PauliSum(
      linear_dict = linear_dict
    )
}

#' @title Pauli Sum Like
#' @family Pauli and Clifford groups
#' @description Any value that can be easily translated into a sum of Pauli products.
#' @param ... parameters to pass.
#'
#' @return sum of pauli arguments.
#' @export
pauli_sum_like <- function(...) {

  args = list(...)
  if(length(args)==0)
    cirq$PauliSumLike
  else
    do.call(cirq$PauliSumLike, args)
}

#' @title Pauli Transform
#' @family Pauli and Clifford groups
#' @description Any value that can be easily transofrmed into a sum of Pauli products.
#' +X, -X, +Y, -Y, +Z, or -Z.
#' @param ... parameters to pass.
#'
#' @return sum of pauli arguments.
#' @export
pauli_transform <- function(...) {

  args = list(...)
  if(length(args)==0)
    cirq$Transform
  else
    do.call(cirq$Transform, args)
}



#' @title Single Qubit Clifford Gate
#' @family Pauli and Clifford groups
#' @description Any single qubit Clifford rotation.
#' @param ... parameters to pass.
#'
#' @return rotated object.
#' @export
clifford_single_qubit_gate <- function(...) {

  args = list(...)
  if(length(args)==0)
    cirq$SingleQubitCliffordGate
  else
    do.call(cirq$SingleQubitCliffordGate, args)
}

#' @title StabilizerStateChForm
#'
#' @description A representation of stabilizer states using the CH form.
#'
#' @details $|\\psi> = \\omega U_C U_H |s>$ This representation keeps track of overall phase.
#' Reference: https://arxiv.org/abs/1808.00128
#'
#' @param num_qubits The number of qubits in the system
#' @param initial_state If an int, the state is set to the computational
#' @param ... other arguments to pass.
#' @return initialized stabilizer states using the CH form.
#' @export
stabilizer_state_ch_form <- function(num_qubits, initial_state = 0, ...) {

  args = list(
    num_qubits = num_qubits,
    initial_state = initial_state,
    ...
  )

  do.call(cirq$StabilizerStateChForm, args)

}







