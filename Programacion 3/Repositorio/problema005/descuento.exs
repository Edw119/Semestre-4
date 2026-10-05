defmodule Descuento do

  def calcular_descuento(valor) do
    if valor > 500000 do
      valor * 0.85
    else
      if valor > 100000 do
        valor * 0.90
      else
        if valor > 50000 do
          valor * 0.95
        else
          valor
        end
      end
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
