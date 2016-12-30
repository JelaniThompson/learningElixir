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

# IO.puts Math.sum(1, 2)
# IO.puts Math.subtract(10, 5) # (UndefinedFunctionError)

# Module Attributes are typically used for descriptions but also work as constants
defmodule Test do
    @versionNumber "1.1.0"
    @author "Jelani Thompson"
    def output do
        IO.puts @author
    end
end

Test.output

# Structs are like maps but with compile-time checks and default values
defmodule Test.person do
    defstruct name: "Sean", roles: []
end

# We have access to alias, require and import as well
defmodule Statistics do
    # Rename Math's list function to be referenced as just List
    alias Math.List, as: List
end

# Require is used when you want to ensure that the module is loaded so you can access its macros
defmodule Macro do
    require Integer
    IO.puts Integer.is_odd(3)
end

# Import is used when we want to access functions or macros from other modules without the full name
defmodule List do
    import List
    IO.puts last([1, 2, 3]) # Calling last before importing would result in an error
end