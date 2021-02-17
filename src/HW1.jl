module HW1

using NBInclude
include("utils.jl")

function studentinfo()
    info = Dict(
        "name" => "Shuo Yang",
        "Andrew ID" => "shuoyang"
    )
    return info
end

notebook(nb::Integer) = notebook(nb:nb)
function notebook(nb=1:3) 
    1 ∈ nb && @nbinclude(joinpath(@__DIR__,"Q1.ipynb"))
    2 ∈ nb && @nbinclude(joinpath(@__DIR__,"Q2.ipynb"))
    3 ∈ nb && @nbinclude(joinpath(@__DIR__,"Q3.ipynb"))
end

end # module
