using BenchmarkTools
## For adding packages you type ] and then add BenchmarkTools
function cos_approx(x, N)
    # approximation of cosine via power series expansion
    # inputs:
    #       - x : argument of cosine 
    #       - N : truncation order of the power series approximation
    # outputs:
    #       - cos_val : approximation of cos(x)
    #sum(i for i in 1:10)
    a = sum((-1)^n * x^(2*n)/(2*factorial(n)) for n in 1:N)
    return a
end

@btime cos_approx($(π/3),$(10)) 
results = @btime cos($(π/3))
@btime cos(π/3)
println("this is something $results" )
println("This other thing took " * string(results))