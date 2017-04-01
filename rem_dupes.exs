#!/usr/bin/elixir

defmodule M do

	def rem_dupes(arr), do: rem_dupes(arr, -1, [])
	
	def rem_dupes([], _, res), do: res

	def rem_dupes([h| t], last, res) 
	when h == last, do: rem_dupes(t, h, res)
		
	def rem_dupes([h| t], _, res), do: rem_dupes(t, h, res ++ [h])
	
end

a = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9]
M.rem_dupes(a) |> IO.inspect