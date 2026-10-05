defmodule Tienda do
  @moduledoc """
  Módulo que representa una tienda y sus operaciones.
  """
  @doc """
  Función principal que ejecuta la lógica de la tienda.
  """
  def main do
    valor_total = "Ingrese el valor total de la compra: "
    |> Util.ingresar(:entero)

    valor_entregado = "Ingrese el valor del pago: "
    |> Util.ingresar(:entero)

    calcular_devuelta(valor_total, valor_entregado)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp calcular_devuelta(valor_total, valor_entregado) do
    valor_entregado - valor_total
  end

  def generar_mensaje(devuelta) do
    "La devuelta es: #{devuelta}"
  end

end

Tienda.main()
