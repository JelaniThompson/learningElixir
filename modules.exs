# Modules are groups of several functions
defmodule Math do
    def sum(a, b) do
        a + b
    end
    
    # Private functions can only be invoked locally
    defp subtract(c, d) do
        c - d
    end
end

IO.puts Math.sum(1, 2)
IO.puts Math.subtract(10, 5) # (UndefinedFunctionError)