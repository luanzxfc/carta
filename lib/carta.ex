defmodule Carta do
  @moduledoc """
  Documentation for `Carta`.
  """

  def menu() do
    IO.puts("Digite a opçao desejada")
    IO.puts("[1] Inserir um novo card")
    IO.puts("[4] Sair")

    get()
  end

  def entry_loop() do
    case menu() do
      "4" -> IO.puts("Tchau")
      _ -> entry_loop()
    end
  end

  def get(), do: IO.gets("") |> String.trim()
end
