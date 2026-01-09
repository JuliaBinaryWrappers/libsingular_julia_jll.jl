# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libsingular_julia_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libsingular_julia")
JLLWrappers.@generate_main_file("libsingular_julia", Base.UUID("ae4fbd8f-ecdb-54f8-bbce-35570499b30e"))
end  # module libsingular_julia_jll
