defmodule Sequence do
  use Application

  def start(_type, _args) do
    {:ok, _pid} = Sequence.Supervisor.start_link(Application.get_env(:sequence, :intial_number))
  end
end
