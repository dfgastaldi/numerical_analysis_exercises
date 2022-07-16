# 1) It is desired to verify if the R random number generator works well. 
# To test it, a function prob(n,k) must be written. The function should generate with the command runif() a vector of n integers between 1 and 10 (round up).
# With that vector it will be verified that the frequency of occurrence of numbers x <= k is the one indicated by the uniform distribution.
# Example:
# prob(100000,5) approx. 0.5.

# 2) Idem above but now you want to verify the rchisq() command. To test it a function prob2(n,gl,k) must be written.
# The vector v will be the one that arises from the direct application of the command for "gl" degrees of freedom.
# This vector will be used to verify that the frequency of occurrence of numbers x <= k is the one indicated by the chi-square distribution with gl degrees of freedom.
# Example:
# prob2(100000,5,7) approx 0.7793597.

