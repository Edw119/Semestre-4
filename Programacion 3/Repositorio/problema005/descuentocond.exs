defmodule Descuento do

  def calcular_descuento(valor) do
    cond do
      valor > 500000 ->
        valor * 0.85

      valor > 100000 ->
        valor * 0.90

      valor > 50000 ->
        valor * 0.95

      true ->
        valor
    end
  end

  def generar_mensaje(valor_final) do
    "El precio final es: $#{round(valor_final)}"
  end

  def main do
    valor = Util.ingresar("Ingrese el monto de la compra: ", :entero)

    valor_final = calcular_descuento(valor)

    mensaje = generar_mensaje(valor_final)

    Util.mostrar_mensaje(mensaje)
  end
end

Descuento.main()
