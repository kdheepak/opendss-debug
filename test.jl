include("src/OpenDSSDirect.jl")

OpenDSSDirect.lib.DSS_Start(Int32(0))
OpenDSSDirect.lib.Text_Set_Command("Redirect ./examples/8500-Node/Run_8500Node.dss")
OpenDSSDirect.lib.Solution_Solve()

# GC.enable(false)

ResultPtr = Ref{Ptr{Cstring}}()
x = [0, 0]
ResultCount = Vector{Cint}(x)

ccall((:Circuit_Get_AllBusNames, OpenDSSDirect.LIBRARY), Cvoid, (Ref{Ptr{Cstring}}, Ptr{Int32}), ResultPtr, ResultCount)

println("Number of buses = $(ResultCount[1])")

for i in 1:3
    println(unsafe_string(unsafe_load(ResultPtr[], i)))
end

ResultPtr = Ref{Ptr{Cstring}}()
x = [0, 0]
ResultCount = Vector{Cint}(x)

ccall((:Circuit_Get_AllBusNames, OpenDSSDirect.LIBRARY), Cvoid, (Ref{Ptr{Cstring}}, Ptr{Int32}), ResultPtr, ResultCount)

println("Number of buses = $(ResultCount[1])")

for i in 1:3
    println(unsafe_string(unsafe_load(ResultPtr[], i)))
end

