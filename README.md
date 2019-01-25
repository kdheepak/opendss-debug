# OpenDSS

**julia-1.1**

Segfaults

```julia
include("./test.jl")
include("./test.jl")
```

Does not segfault.

```bash
julia-1.1 test.jl
```

**python3.6**

Does not segfault

```bash
python test.py
```
