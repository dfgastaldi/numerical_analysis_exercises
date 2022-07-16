# 1) It is desired to verify if the R random number generator works well. 
# To test it, a function prob(n,k) must be written. The function should generate with the command runif() a vector of n integers between 1 and 10 (round up).
# With that vector it will be verified that the frequency of occurrence of numbers x <= k is the one indicated by the uniform distribution.
# Example:
# prob(100000,5) approx. 0.5.
# prob(100,5)

prob <- function(n, k){
  integer_vector <- ceiling(runif(n, 1, 10))
  return(sum(as.numeric(integer_vector <= k)) / (length(integer_vector)-1))
}

# One time
prob(100000,5)
# A hundred times
mean(rep(prob(100000,5), 100))
# Values should be similar to this
punif(5,1,10)

# 2) Idem above but now you want to verify the rchisq() command. To test it a function prob2(n,gl,k) must be written.
# The vector v will be the one that arises from the direct application of the command for "gl" degrees of freedom.
# This vector will be used to verify that the frequency of occurrence of numbers x <= k is the one indicated by the chi-square distribution with gl degrees of freedom.
# Example:
# prob2(100000,5,7) approx 0.7793597.

prob2 <- function(n, gl, k){
  v <- ceiling(rchisq(n, gl))
  return(sum(as.numeric(v <= k)) / (length(v)-1))
}

# One time
prob2(100000,5, 5)
# A hundred times
mean(rep(prob2(100000,5, 5), 100))
# Values should be similar to this
pchisq(5, 5)

