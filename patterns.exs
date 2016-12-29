# The pin operator (^) prevents the re-assignment of a variable
x = 1
^x = 2 # (MatchError) no match of right hand side value: 2

{x, ^x} = {2, 1} # No error because the first x doesn't use the pin operator
IO.puts(x) # 2