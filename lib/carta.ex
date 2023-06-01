defmodule Carta do
  @moduledoc """
  Documentation for `Carta`.
  """
  defstruct portugues: "_", ingles: "_"

  def menu() do
    IO.puts("Digite a opçao desejada")
    IO.puts("[1] Inserir um novo card")
    IO.puts("[2] Mostrar as cartas")

    IO.puts("[4] Sair")

    get()
  end

  def entry_loop(memory) do
    case menu() do
      "1" ->
        memory = insert(memory)
        entry_loop(memory)

      "2" ->
        show(memory)
        entry_loop(memory)

      "4" ->
        IO.puts("Tchau")

      _any ->
        IO.puts("Opçao invalida digite de novo")
        entry_loop(memory)
    end
  end

  def get(), do: IO.gets("") |> String.trim()

  def insert(memory) do
    IO.puts("insira uma palavra em portugues")
    pt = get()
    IO.puts("insert an English's word")
    en = get()

    carta = %Carta{portugues: pt, ingles: en}
    memory = memory ++ [carta]

    memory
  end

  def show(memory) do
    dbg(memory)
  end
end
