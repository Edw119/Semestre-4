defmodule Saludo do

    def main do

       "Bienvenido al curso de Elixir" |> mostrar_mensaje()

    end


    defp mostrar_mensaje(mensaje) do
        mensaje |> IO.puts()
    end

end

Saludo.main()
