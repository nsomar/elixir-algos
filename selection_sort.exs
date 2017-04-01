
defmodule Sorter do

	def sort(arr) do
		sort(arr, [])
	end
	
	defp sort([], acc), do: acc
	
	defp sort(arr, acc) do
		{max, rest} = max_and_arr(arr)
		sort(rest, acc ++ [max])
	end
	
	defp max_and_arr(arr) do
		[max: max, index: index] = max(arr)
		{max, List.delete_at(arr, index)}
	end
	
	defp max(arr) do
		with_index = Enum.with_index(arr)
		
		Enum.reduce(with_index, [max: -1, index: -1], 
		
			fn ({item, current_index}, [max: max, index: _] = acc) -> 
				if item > max do
					[max: item, index: current_index]
				else
					acc
				end
		end)
	end	
	
end

a = [1, 2, 10, 2, 12, 5, 6, 9, 13]
Sorter.sort(a) |> IO.inspect