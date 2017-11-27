# Se pide:
# Crear una clase Table cuyo constructor reciba el nombre de la mesa y las recaudaciones correspondientes de cada día.
# Hint: El constructor debe recibir 5 argumentos. Uno para el nombre de la mesa y los demás para cada recaudación correspondiente a esa mesa.
# Crear un método que permita leer el archivo e instanciar un objeto de la clase Table por cada línea del archivo.
# Crear métodos que permitan:
# - Conocer el mayor valor recaudado, por mesa, y el nombre de la mesa y día corresponde (día 1, día 2, día 3 o día 4).
# - Calcular el promedio total de lo recaudado por todas las mesas en todos los días.

class Table
  attr_reader :model, :earnings1, :earnings2, :earnings3, :earnings4
  def initialize(modelo_mesa, ganancias_dia_1, ganancias_dia_2, ganancias_dia_3, ganancias_dia_4)
    @model = modelo_mesa
    @earnings1 = ganancias_dia_1
    @earnings2 = ganancias_dia_2
    @earnings3 = ganancias_dia_3
    @earnings4 = ganancias_dia_4
  end
end

  def leer
    file = File.open('casino.txt', 'r')
    data = file.readlines # retorna un arreglo donde cada linea es un elmento del archivo
    file.close

    arreglos_totales = []

    data.each do |line| # recorrer cada line
      arreglo = line.split(', ').map { |e| e.chomp } # me sapara los datos por ", "
      print arreglo[4]
      arreglos_totales.push(Table.new(arreglo[0], arreglo[1], arreglo[2], arreglo[3], arreglo[4]))
    end
    arreglos_totales
  end

tables = leer
table1 = tables[0]
table2 = tables[1]
table3 = tables[2]
table4 = tables[3]

print("#{table1.model} ", "#{table1.earnings1} ", "#{table1.earnings2} ", "#{table1.earnings3} ", "#{table1.earnings4}") #imprimo uno de los nuevos objetos (ej. table1) sólo para revisar que logré identificar los atributos para poder trabajar con ellos.



  # def array.max_by do |element|
  #   element.field
  # end
  # leer


  #     mayor_valor = 0
  #     calculo_promedio = (arreglo[1].to_i + arreglo[2].to_i + arreglo[3].to_i + arreglo[4].to_i)/5.0 # calcula el promedio con decimales (float) porque lo dividi por un decimal
  #     promedio_alumno = [nombre, calculo_promedio] # primera vuelta toma el caluclo de nota de la primera persona ej ['David', 3.6]
  #     arreglo_totales.push(promedio_alumno) # con el push agrego un elemento al final del arreglo, en este caso un nuevo arreglo [['David', 10], ['Mai', 7]]
  #
  #     end
  #     file_calculo.close
  # end
