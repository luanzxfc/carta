defmodule CartaTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  describe "menu/0" do
    test "returns ok when valid data" do
      screen = capture_io([input: "1\nola"], fn -> assert :ok == Carta.menu() end)

      assert screen =~ "Digite a opçao desejada"
      assert screen =~ "[1] Inserir um novo card"
    end
  end

  # describe "save/1" do
  #   test "returns a new card when valid data" do
  #     assert capture_io([input: "mary", capture_prompt: false], fn ->
  #       IO.write ProjectName.get_name
  #     end) == "mary"
  #   end
  # end
end
