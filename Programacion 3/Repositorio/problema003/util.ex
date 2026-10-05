defmodule Util do

  def mostrar_mensaje(mensaje) do
    mensaje
    |> String.trim()
    |> IO.puts()
  end

  def ingresar(mensaje, :texto) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    try do
      mensaje
      |> IO.gets()
      |> String.trim()
      |> String.to_integer()
    rescue
      ArgumentError ->
        IO.puts("Error: debes ingresar un número entero.")
        ingresar(mensaje, :entero)
    end
  end

end
