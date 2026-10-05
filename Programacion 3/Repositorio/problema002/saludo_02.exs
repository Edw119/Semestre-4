defmodule Saludo do
  def main do

    "Ingrese el nombre del empleado: "
    |> ingresar_texto()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp ingresar_texto(mensaje) do
    IO.gets(mensaje)
    |> String.trim()
  end


end

Saludo.main()
