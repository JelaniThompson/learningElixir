# The Enum module includes over 100 functions for working with collections
# With a lot of enum functions, we supply a function to apply to the collection's items
# In the case of all?, all items must evaluate to true otherwise false will be returned
IO.puts Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end) # false
IO.puts Enum.all?(["1", "2", "3"], fn(i) -> String.length(s) == 1 end) # true

# any? is like all? but returns true if any of the values are true

# Chunk breaks collection up into sub-collections of two
IO.puts Enum.chunk([1, 2, 3, 4, 5, 6], 2) 

# Each is used when you want to iterate over a collection without producing a new value
Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end) # one two three