#!/usr/bin/elixir

defmodule Sorter do

	def merge_sort(arr) when length(arr) == 1, do: arr
	def merge_sort(arr) do
		{l, r} = Enum.split(arr, div(length(arr), 2))

		sl = merge_sort(l)
		sr = merge_sort(r)
		
		merge(sl, sr, [])
	end

	def merge([], [], res), do: res
	
	def merge([], r, res) do
	  merge([], [], res ++ r)
	end
	
	def merge(l, [], res) do 
		merge([], [], res ++ l)
	end
	
	def merge(l = [a | _], [b | tr], res) 
	when a >= b do
	  merge(l, tr, res ++ [b])
	end
	
	def merge([a | tl], r = [b | _], res) 
	when a < b do
	  merge(tl, r, res ++ [a])
	end
	
end

a = [4, 1, 2, 5, 3, 8, 7, 6]
Sorter.merge_sort(a)
|> IO.inspect