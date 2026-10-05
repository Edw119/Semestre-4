defmodule CellStore do

  def main do
    valor_producto = "Ingrese el valor del producto: "
    |> Util.ingresar(:entero)

    porcentaje = ingresar_descuento()

    valor_descuento = calcular_descuento(valor_producto, porcentaje)

    valor_final = valor_producto - valor_descuento

    generar_mensaje(valor_descuento, valor_final)
    |> Util.mostrar_mensaje()
  end

  defp ingresar_descuento do
    try do
      porcentaje = "Ingrese el porcentaje de descuento (0.0 - 1.0): "
      |> Util.ingresar(:texto)
      |> String.to_float()

      if porcentaje >= 0.0 and porcentaje <= 1.0 do
        porcentaje
      else
        IO.puts("Error: el descuento debe estar entre 0.0 y 1.0.")
        ingresar_descuento()
      end

    rescue
      ArgumentError ->
        IO.puts("Error: debes ingresar un número.")
        ingresar_descuento()
    end
  end

  defp calcular_descuento(valor_producto, porcentaje) do
    valor_producto * porcentaje
  end

  defp generar_mensaje(valor_descuento, valor_final) do
    descuento = :io_lib.format("~.2f", [valor_descuento])
    final = :io_lib.format("~.2f", [valor_final])

    "Valor del descuento: #{descuento}\nValor final a pagar: #{final}"
  end

end

CellStore.main()
