itens = 	[%{produto:	"Tv	LG	32	polegadas",	valor:	935.50},	
%{produto:	"Notebook	Samsung	1TB",	valor:	1599.00},	%{produto:	"B
arbeador	Gilette",	valor:	9.99}]


IO.puts Enum.map(itens,&Float.round(&1.valor))|>Enum.sum

IO.puts Enum.map(itens,&(Float.round(&1.valor - &1.valor * 0.2)))
|>Enum.filter(&(&1>10.000))
|>Enum.sum