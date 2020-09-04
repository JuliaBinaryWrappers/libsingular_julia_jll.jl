# Autogenerated wrapper script for libsingular_julia_jll for x86_64-linux-gnu-cxx11
export libsingular_julia

using CompilerSupportLibraries_jll
using libcxxwrap_julia_jll
using Singular_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libsingular_julia`
const libsingular_julia_splitpath = ["lib", "libsingular_julia.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsingular_julia_path = ""

# libsingular_julia-specific global declaration
# This will be filled out by __init__()
libsingular_julia_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsingular_julia = "libsingular_julia.so"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list, libcxxwrap_julia_jll.PATH_list, Singular_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list, libcxxwrap_julia_jll.LIBPATH_list, Singular_jll.LIBPATH_list,))

    global libsingular_julia_path = normpath(joinpath(artifact_dir, libsingular_julia_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsingular_julia_handle = dlopen(libsingular_julia_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libsingular_julia_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()