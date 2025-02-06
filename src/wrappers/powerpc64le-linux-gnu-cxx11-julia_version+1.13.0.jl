# Autogenerated wrapper script for libsingular_julia_jll for powerpc64le-linux-gnu-cxx11-julia_version+1.13.0
export libsingular_julia

using libcxxwrap_julia_jll
using Singular_jll
JLLWrappers.@generate_wrapper_header("libsingular_julia")
JLLWrappers.@declare_library_product(libsingular_julia, "libsingular_julia.so")
function __init__()
    JLLWrappers.@generate_init_header(libcxxwrap_julia_jll, Singular_jll)
    JLLWrappers.@init_library_product(
        libsingular_julia,
        "lib/libsingular_julia.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
