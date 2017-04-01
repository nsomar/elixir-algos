#!/usr/bin/elixir

defmodule M do

	def dup(arr) do
		_dup(arr |> Enum.with_index)
	end

	def _dup([]), do: -1
	
	def _dup([{c_item, _}, {n_item, n_index} | _])
	when c_item == n_item, do: n_index
	
	def _dup([_| rest]), do: _dup(rest)
	
end

a = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9]
M.dup(a) |> IO.inspect