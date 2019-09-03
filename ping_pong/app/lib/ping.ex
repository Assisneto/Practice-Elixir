defmodule App.Ping do
  
  def start() do
    wait()
  end

  def wait() do
    receive do
      {pid,:pong} -> send(pid,{self(), :ping})
      IO.puts "Recebi um Pong"
    end
  wait()
  end
end