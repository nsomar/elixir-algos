
defmodule Flatten do

	def flatten(arr), do: flatten(arr, [])
	
	defp flatten([], res), do: res
	
	defp flatten([h| t], res) when is_list(h) do
		flat = res ++ flatten(h, [])
		flatten(t, flat)
	end
	
	defp flatten([h| t], res) do
		flatten(t, res ++ [h])
	end

end

a = [1, [2, 3, [41, 42, [1, 2]]], 5]
Flatten.flatten(a)