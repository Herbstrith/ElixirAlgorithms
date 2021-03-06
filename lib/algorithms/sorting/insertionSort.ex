defmodule Algorithms.Sorting.InsertionSort do
  @moduledoc """
    This is the Insertion Sort module.
    It uses the insertion sort algorithm to sort a list of numbers.

    Pros of insertion sort:
      stable
      efficient for small data that is almost sorted
    Cons of insertion sort:
      n² complexity
  """
  # method call
  def sort(list = []) do
    list
  end

  @doc """
    Returns the sorted given 'list'

    ## Examples


      iex> Algorithms.Sorting.InsertionSort.sort([1,5,4,8,3,2])
      [1,2,3,4,5,8]

  """
  def sort(list) do
    sort([hd(list)], tl(list))
  end

  # the last case of the recursion
  defp sort(output_list, _input_list = []) do
    output_list
  end

  # the "average" case when both lists have entries on them, input list must not be empty
  defp sort(output_list, _input_list = [head | tail]) do
    insert_crescent(head, output_list) |> sort(tail)
  end

  # when the output list is empty we just return the element
  defp insert_crescent(actual_element, _output_list = []) do
    [actual_element]
  end

  # Inserts the element in output_list
  defp insert_crescent(actual_element, _output_list = [head | tail]) do
    if head >= actual_element do
      [actual_element | [head | tail]]
    else
      [head | insert_crescent(actual_element, tail)]
    end
  end
end
