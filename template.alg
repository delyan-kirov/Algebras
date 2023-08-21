# Please write the model for your algebra here:
# All lines starting with the character # will be ignored

# Example model: 
# Signature: AbelianGroup(A, 0, -, +)

# Make sure that the name of your algebra is capitalized
# The set of your algebra is the first element of the n-tuple
# N-ary operations can use any strings, except ", # ( ) [ ] { }"

# The operations are 

# Definition:  0 : A^0 -> A
#	       - : A^1 -> A
#	       + : A^2 -> A

# Make sure to follow the pattern function: Set^arity -> Set

# Equations: a + 0 = a
#            a + -(a) = 0
#	     a + b = b + a
# 	     a + (b + c) = (a + b) + c

# constants are written as is
# unary operations like this: operation(element)
# binary operations like this: element_1 operation element_2
# n-ary operations are written like this: operation(1, 2, 3,.., n)
