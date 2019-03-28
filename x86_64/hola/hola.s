# ----------------------------------------------------------------------------------------
# Writes "Hola, mundo" to the console using a C library. Runs on Linux or any other system
# that does not use underscores for symbols in its C library. To assemble and run:
#
#     gcc hola.s && ./a.out
# ----------------------------------------------------------------------------------------

        .global main

.section .text
main:                                   # This is called by C library's startup code
        mov     $message, %rdi          # First integer (or pointer) parameter in %rdi
        call    puts                    # puts(message)
        ret                             # Return to C library code
.section .data
message:
        .asciz "Hola, mundo"            # asciz puts a 0 byte at the end
# ----------------------------------------------------------------------------------------
# add a new line at the end of source code (line 22 of this source code)
# "Warning: end of file not at end of a line; newline inserted" will disappear
# --------------------------------this is line 21-----------------------------------------
