# A keyword list, the first item in a tuple must be an atom
list = [{:a, 1}, {:b, 2}]
IO.puts(list == [a: 1, b: 2])
# Keyword lists have access to the same properties as normal lists such as ++/--

# Maps are the go-to data structure for key/pair values
map = %{:a => 1, 2 => :b}
IO.puts(map[:a])
IO.puts(map[2])
# Maps allow any value as a key as opposed to lists being limited to atoms + no ordering

# => is for key/values and -> is for control flow and lambdas