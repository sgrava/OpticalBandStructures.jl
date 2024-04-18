using OpticalBandStructures
using Test
using Aqua
using JET
using JuliaFormatter

@testset "OpticalBandStructures.jl" verbose=true failfast=true begin
    # Write your tests here.

    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(
            OpticalBandStructures,
            deps_compat = (check_extras = false),
            ambiguities = false
        )
    end
    @testset "Linting (JET.jl)" begin
        JET.test_package(OpticalBandStructures; target_defined_modules = true)
    end
    @testset "Formatting (JuliaFormatter.jl)" begin
        JuliaFormatter.format(".", SciMLStyle())
    end
end
