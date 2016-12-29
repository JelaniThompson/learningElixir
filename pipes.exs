# Pipes (|>) pass the result of an expression as the first parameter of another expression
IO.puts "Elixir rocks" |> String.split # Returns ["Elixir", "rocks"] in iex
IO.puts "Elixir rocks" |> String.upcase |> String.split # Same result but uppercase
IO.puts "Elixir" |> String.ends_with?("ixir") # True