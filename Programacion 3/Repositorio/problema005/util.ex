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

  def mostrar_error(mensaje) do
    mensaje
    |> IO.puts(:standard_error,mensaje)
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

  def ingresar(mensaje, :real) do
    try do
      mensaje
      |> ingresar(:texto)
      |> String.to_float()
    rescue
      ArgumentError ->
       "Error: debes ingresar un número real."
        |> mostrar_error()

        mensaje
        |> ingresar(:real)
    end
  end
  def ingresar(mensaje, parser, tipo_dato) do
    try do
      mensaje
      |> ingresar(:texto)
      |> parser.()
    rescue
      ArgumentError ->
        "Error: debes ingresar un número #{tipo_dato}\n"
        |> mostrar_error()

        mensaje
        |> ingresar(parser, tipo_dato)
    end
  end

  

end
