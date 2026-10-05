defmodule Palindromo do

  def main do
    palabra = "Ingrese una palabra: "
    |> Util.ingresar(:texto)
    |> String.trim()

    palabra_invertida = String.reverse(palabra)

    generar_mensaje(palabra, palabra_invertida)
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(palabra, palabra_invertida) do
    if palabra == palabra_invertida do
      "La palabra #{palabra} es palíndroma."
    else
      "La palabra #{palabra} no es palíndroma."
    end
  end

end

Palindromo.main()
