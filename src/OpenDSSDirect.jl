module OpenDSSDirect

export LIBRARY
import Libdl

const path = @__DIR__
const LIBRARY = joinpath(path, "../deps/apple/libdss_capi_v7.dylib")
# _dss_lib = Libdl.dlopen(LIBRARY)

include("dss.jl")


end # module
