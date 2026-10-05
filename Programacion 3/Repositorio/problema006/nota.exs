defmodule Notas do

  def promedio(notas) do
    Enum.sum(notas) / length(notas)
  end

  def contar_encima_debajo(notas) do
    promedio = promedio(notas)

    mayores = Enum.count(notas, fn nota -> nota > promedio end)
    menores = Enum.count(notas, fn nota -> nota < promedio end)

    {mayores, menores}
  end

  def nota_minima_maxima(notas) do
    {Enum.min(notas), Enum.max(notas)}
  end

  def contar_aprobados_reprobados(notas) do
    aprobados = Enum.count(notas, fn nota -> nota >= 3 end)
    reprobados = Enum.count(notas, fn nota -> nota < 3 end)

    {aprobados, reprobados}
  end
end


notas = [4.9, 4.5, 3.0, 3.8, 2.3, 1.5, 2.0, 4.0, 3.5, 2.8]

promedio = Notas.promedio(notas)
{mayores, menores} = Notas.contar_encima_debajo(notas)
{minima, maxima} = Notas.nota_minima_maxima(notas)
{aprobados, reprobados} = Notas.contar_aprobados_reprobados(notas)

IO.puts("Promedio de notas: #{Float.round(promedio, 2)}")
IO.puts("Estudiantes con nota mayor al promedio: #{mayores}")
IO.puts("Estudiantes con nota menor al promedio: #{menores}")
IO.puts("Nota mínima: #{Float.round(minima, 2)}")
IO.puts("Nota máxima: #{Float.round(maxima, 2)}")
IO.puts("Estudiantes aprobados: #{aprobados}")
IO.puts("Estudiantes reprobados: #{reprobados}")
