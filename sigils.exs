# The ~c/C sigils generate character lists. Lowercase has interpolation/escaping and uppercase does not
IO.puts ~c/2 + 7 = #{2 + 7}/

# ~r/R is used for regular expressions
re = ~r/elixir/
IO.puts "Elixir" =~ re # false
IO.puts "elixir" =~ re # true

# ~s/S is used to generate string data
string = ~s/the cat in the hat on the mat 🔥🔥🔥/
IO.puts string

# ~w/W creates a word list by putting words separated by whitespace into a list
list = ~w/i love elixir school/
IO.puts list # Outputs correctly in iex

# You can also create your own sigils
defmodule Uppity do
    def sigil_u(string, []), do: String.upcase(string)
end

defmodule PrintScream do
    import Uppity
    def yell do
        scream = ~u/don't tell me to calm down, i am calm!/
        IO.puts scream
    end
end

PrintScream.yell