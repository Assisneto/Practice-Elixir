defmodule	App.Table do
	def	start()	do
    ping  =	spawn(App.Ping,	:start,	[])
    pong	=	spawn(App.Pong,	:start,	[])	
    send(ping, {pong,	:pong})
  end
end