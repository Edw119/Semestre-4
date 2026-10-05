defmodule Util do
  def mostrar_mensaje(mensaje) do
    System.cmd("java", ["-cp", ".", "Mensaje", mensaje])
  end
  def ingresar(mensaje, :texto) do
    mensaje
    |>IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :enter) do
    mensaje
    |>IO.gets()
    |> String.trim()
    |> String.to_integer()
  end

end
