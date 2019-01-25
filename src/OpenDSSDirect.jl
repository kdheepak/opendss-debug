module OpenDSSDirect

export LIBRARY
import Libdl

const path = @__DIR__
if Sys.iswindows()
    const LIBRARY = joinpath(path, "../deps/win32/libdss_capi_v7.dll")
elseif Sys.islinux()
    const LIBRARY = joinpath(path, "../deps/linux/libdss_capi_v7.so")
else
    const LIBRARY = joinpath(path, "../deps/apple/libdss_capi_v7.dylib")
end
# _dss_lib = Libdl.dlopen(LIBRARY)

include("dss.jl")


end # module
