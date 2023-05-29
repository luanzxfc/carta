defmodule CartaTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  describe "menu/0" do
    test "returns ok when valid data" do
      screen = capture_io(fn -> assert :ok == Carta.menu() end)

      assert screen =~ "Digite a opçao desejada"
      assert screen =~ "[1] Inserir um novo card"
    end
  end
end
