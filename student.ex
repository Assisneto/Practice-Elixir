defmodule Student do
  defstruct name: nil, results: [] 

  def firstName(student) do String.split(student.name)|>List.first end
  def lastName(student) do String.split(student.name)|>List.last end
end

 