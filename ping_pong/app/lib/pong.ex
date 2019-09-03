defmodule App.Pong do

  def start() do
    wait()
  end

  def wait () do
    receive do
      {pid,:ping} ->
        send(pid,{self(),:pong})
        IO.puts "Recebi um Ping"
    end
    wait()
  end
end