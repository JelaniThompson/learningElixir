# Lists can contain any value
["turkey", false, 37]

## Concatenate and subtract strings with ++ and --
IO.puts [1, 2, 3] ++ [4, 5, 6] # [1, 2, 3, 4, 5, 6]

# The head is the first item in a list and the tail is the rest
nums = [9, 8, 7, 6, 5, 4, 3, 2, 1]

IO.puts hd(nums) # 9
IO.puts tl(nums) # [8, 7, 6, 5, 4, 3, 2, 1]