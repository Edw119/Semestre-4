
defmodule Promocion do

  def main do
    cedula = IO.gets("Ingrese el número de cédula: ")
             |> String.trim()
             |> String.to_integer()

    verificar_descuento(cedula)
  end

  def verificar_descuento(cedula) do
    if rem(cedula, 1991) == 0 do
      IO.puts("El cliente recibe un descuento del 50%.")
    else
      IO.puts("El cliente no recibe el descuento.")
    end
  end

end

Promocion.main()
