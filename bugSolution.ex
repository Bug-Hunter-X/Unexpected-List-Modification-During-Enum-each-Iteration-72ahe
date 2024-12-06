```elixir
list = [1, 2, 3, 4, 5]

# Correct approach using Enum.filter
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list)

#Alternative approach using recursion
list = [1,2,3,4,5]

defmodule MyList do
  def remove_element(list, element) do
    remove_element(list, element, [])
  end

  defp remove_element([], _element, acc), do: Enum.reverse(acc)
  defp remove_element([head | tail], element, acc) when head == element, do: remove_element(tail, element, acc)
  defp remove_element([head | tail], element, acc), do: remove_element(tail, element, [head | acc])
  
end

new_list = MyList.remove_element(list, 3)
IO.inspect(new_list)
```