
defmodule Searcher do

	def search(arr, element) do
		search(arr, element, 0, length(arr))
	end
	
	def search(arr, element, start_point, end_point)
	when start_point >= end_point, do: -1
	
	def search(arr, element, start_point, end_point) do
		c = center(start_point, end_point)
		i = Enum.at(arr, c)
		
		cond do
			element == i 	-> c
			element < i 	-> search(arr, element, start_point, c)
			element > i 	-> search(arr, element, c, end_point)
		end
	end
	
	defp center(start_point, end_point) do
		((end_point + start_point) / 2.0) |> Float.floor |> round
	end
	
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
Searcher.search(a, 6) |> IO.inspect