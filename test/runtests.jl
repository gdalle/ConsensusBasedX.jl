using ConsensusBasedX

using SafeTestsets, Test

@testset "ConsensusBasedX.jl" begin
  for test ∈ [
    "interface/initialise_particles",
    "interface/minimise",
    "interface/parse_config",
    "aqua",
    "format",
  ]
    @eval begin
      @safetestset $test begin
        include($test * ".jl")
      end
    end
  end
end