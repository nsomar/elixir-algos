
defmodule Sorter do

	def qsort(arr) when length(arr) <= 1, do: arr
	
	def qsort(arr) do
		p = pivot(arr)
		smaller = get_arr(arr, &( &1 < p))
		equal = get_arr(arr, &( &1 == p))
		greater = get_arr(arr, &( &1 > p))
		
		qsort(smaller) ++ equal ++ qsort(greater)
	end
	
	def pivot(arr) do
		Enum.at(arr, round(length(arr) / 2))
	end
	
	def get_arr(arr, func) do
		Enum.filter(arr, func)
	end
	
end

a = [1, 2, 3, 5, 1, 5, 0, 6, 8, 3, 6, 9, 4]
Sorter.qsort(a) |> IO.inspect