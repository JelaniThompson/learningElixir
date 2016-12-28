# Control Flow

# Case takes a pattern and applies pattern matching to it
case {1, 2, 3} do
    {4, 5, 6} -> IO.puts("Matched {4, 5, 6}")
    {1, 2, 3} -> IO.puts("Matched {1, 2, 3}")
    _ -> IO.puts("Whoops, sorry. No match for you!")
end

# Cond is like case but for finding the first condition that is true (like else if)
cond do
    2 + 2 == 5 ->
        IO.puts "This will not be true"
    2 * 2 == 3 ->
        IO.puts "This will also be false"
    1 + 1 == 2 ->
        IO.puts("This is true!")
end

# If you want to check for only one condition, use if and unless
if true do
    IO.puts("This works!")
end

unless true do
    IO.puts("This will never be seen")
end

# If statements also support else blocks