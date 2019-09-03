defmodule Calculator do

def start() do
  aluno1 = %Student{name: "João pedro", results: build_subjects([5.2,3.9,2,7,9,8])}
  aluno2 = %Student{name: "Joana D'arc", results: build_subjects([8.4,7.5,2.8,9.5])}

  result = calculate([aluno1,aluno2])
  best	=	best_result(result)
  {result,best}
  
end

defp calculate(students) do 

  students|>Enum.map(&(
    %{
      first_name: Student.firstName(&1),
      last_name: Student.lastName(&1),
      average: average(&1)
  }))
end

defp average(student) do
  total = Enum.count(student.results)
  result = student.results
  |> Enum.map(&(&1.result))
  |> Enum.reduce(&(&1+&2))

 Float.ceil(result / total,2)

  end

  defp best_result(students) do
    best = students
    |>Enum.map(&(&1.average))
    |>Enum.max

    students |> Enum.filter(&(&1.average === best))
  end

  	defp	build_subjects(results)	do
				subjects	=	["Matemática",	"Português",	"Geografia",	"História"]
				subjects
				|>	Enum.map(&(%Subject{name:	&1,	result:	Enum.random(results)
}))
		end
end