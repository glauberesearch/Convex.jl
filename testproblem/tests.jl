using Convex, SCS, Test
using Convex.ProblemDepot: run_tests

@testset "SCS" begin
    run_tests([r"complex"]) do p
        solve2!(p, () -> SCS.Optimizer(verbose=0, eps=1e-6))
    end
end
@testset "SCS" begin
    run_tests([r"affine"]) do p
        solve2!(p, () -> SCS.Optimizer(verbose=0, eps=1e-6))
    end
end



@testset "SCS" begin
    run_tests([r"affine_conv_atom"]) do p
        solve2!(p, () -> SCS.Optimizer(verbose=0, eps=1e-6))
    end
end
