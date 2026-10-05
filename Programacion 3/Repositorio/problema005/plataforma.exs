defmodule Plataforma do

  def validar_acceso(nombre, edad, credenciales_validas, intentos_fallidos) do

    if credenciales_validas == false do
      {:error, "Credenciales inválidas"}

    else
      if edad < 18 do
        {:error, "Acceso restringido por edad"}

      else
        if intentos_fallidos >= 3 do
          {:error, "Cuenta bloqueada"}

        else
          unless credenciales_validas == false do
            {:ok, "Acceso concedido"}
          end
        end
      end
    end
  end
end
