# 1.1
# Modifica la condición para que se cumpla

# a = 2
# if a == 'saludo'
# puts 'La condición es verdadera.'
# end

a = 2
if a == 2
    puts 'La condición es verdadera.'
end

# 1.2
# Modifica el valor asignado a la variable 'a' para que se cumpla la condición

# a = 2
# if a == 5
# puts 'La condición es verdadera.'
# end

a = 5 
if a == 5
    puts 'La condición es verdadera.'
end

# 1.3
# Hacer un refactoring, transformando las últimas 3 líneas en una sola línea.
# a = 'X9-by'
# if a == 'X9-by'
# puts 'HOLA!'
# end

a = 'X9-by'
puts 'HOLA' if a == 'X9-by'

# 1.4
# La variable 'password' no se encuentra definida.
# Permitir que el usuario pueda ingresar la contraseña por teclado, almacenar esta contraseña en la
# variable 'password' y luego evaluar la condición.

# if password == 'secreto'
#     puts 'Acceso PERMITIDO! :)'
#     else
#     puts 'Acceso DENEGADO! :('
#     end

puts 'Por favor ingrese contraseña'
password = gets.chomp
if password == 'secreto'
    puts 'Acceso PERMITIDO! :)'
else
    puts 'Acceso DENEGADO! :('
end

# 1.5
# Utiliza lógica booleana para hacer un refactoring de este código. Para verificar la evaluación de
# condiciones puedes modificar los valores de a y b.

# a = true
# b = true
# if a == true
# if b == true
# puts 'Lograste A y B!'
# else
# puts 'Lograste A! Pero no B!'
# end
# else
# puts 'No lograste A ni B!'
# end

a = true
b = true
if a && b
    puts 'Lograste A y B!'
elsif a && !b 
    puts 'Lograste A! Pero no B!'
else
    puts 'No lograste A ni B!'
end

# 1.6
# Utiliza álgebra booleana para hacer un refactoring de este código. Para verificar la evaluación de
# condiciones puedes modificar los valores de a y b.
# a = 'verdadero'
# b = 'falso'
# if a == 'verdadero'
# puts ':)'
# else
# if b == 'verdadero'
# puts ':|'
# else
# puts ':('
# end
# end

a = 'verdadero'
b = 'falso'
if a == 'verdadero'
    puts ':)'
elsif b == 'verdadero'
    puts ':|'
else
    puts ':('
end

# 2.1
# En el siguiente código reemplaza la instrucción 'for' por 'times'

# for i in 1..10 do
#     puts i
#     end

10.times do |i|
    puts i+1
end


# 2.2
# En el siguiente código reemplaza la instrucción 'while' por 'times'

# i = 0
# while i < 10
# puts "Iteración #{i}"
# i = i + 1
# end

10.times do |i|
    puts "Iteración #{i}"
end

# 2.3
# Mostrar todos los divisores del número 990 con 'while', 'for' y 'times'.

divisor = 1
while divisor <= 990 do
    
    if 990 % divisor == 0
        puts divisor
    end
    divisor += 1

end

divisorfor = 1
for i in 1..990 
    if 990 % divisorfor == 0
        puts divisorfor
    end
    divisorfor += 1
end        

divisorti = 1
990.times do
    if 990 % divisorti == 0
        puts divisorti
    end
    divisorti += 1

end


# 2.4
# En el siguiente código:

# a = 5
# b = ''
# a.times do
# b = '<li> hola </li>'
# end

# Modifica el código para que el contenido de b sea un string que contenga:

# <ul>
# <li> hola </li>
# <li> hola </li>
# <li> hola </li>
# <li> hola </li>
# <li> hola </li>
# </ul>

a = 5
b = ''
a.times do
    b += '<li> hola </li>'
end
puts b 

# 2.5
# El siguiente código busca sumar todos los números del 1 al 10, pero no funciona porque algo falta,
# ¿puedes arreglarlo?
# Hint: El total debería sumar 55.

# 10.times do |i|
#     suma += i
#     end
#     puts suma

suma = 1
10.times do |i|
    suma += i
end
puts suma

# 2.6
# El siguiente algoritmo pretende calcular la multiplicación de los números de 1 a 10. (Factorial de 10)

# multiplicacion = 1
# 10.times do |i|
# multiplicacion *= i
# end
# puts multiplicacion

multiplicacion = 1
10.times do |i|
    multiplicacion *= (i+1) 
end
puts multiplicacion

# 2.7
# El siguiente código:

# a = 10
# a.times do |i|
# puts i
# if i.even?
# puts 'par'
# end
# end

# Debería imprimir la siguiente secuencia, pero no está completo:

# 1
# par
# 3
# par
# 5
# par
# 7
# par
# 9
# par

a = 10
a.times do |i|

    if (i+1).even?
        puts 'par'
    else   
        puts i+1
    end    
end

# 2.8
# Generar -utilizando un ciclo iterativo- un string con la siguiente estructura:

# a = '1impar 2par 3impar 4par 5impar 6par 7impar 8par 9impar 10par'

# a = ''
# 10.times do |i|
# # aquí agregar instrucciones necesarias
# end
# puts a

a = ''
10.times do |i|
    if (i+1).even?
        a += (i+1).to_s + 'par '
    else
        a += (i+1).to_s + 'impar '
    end    
end
print a

# 2.9
# Crear un algoritmo que permita generar un string con el siguiente contenido:

# <table>
# <tbody>
# <tr>
# <td> 1 </td>
# <td> 2 </td>
# <td> 3 </td>
# </tr>
# </tbody>
# </table>

puts '<table>'
puts '<tbody>'
puts '<tr>'
3.times do |i|
    puts "<td> #{i+1} </td>"
end
puts '</tr>'
puts '</tbody>'
puts '</table>'

# 2.10
# El siguiente bloque de código debería mostrar un menú e imprimirlo reiteradamente hasta que el
# usuario ingrese la opción número 4.

# ready = 0
# while(ready == 0){
# puts "Opción 1: blah"
# puts "Opción 2: blah"
# puts "Opción 3: blah"
# puts "Opción 4: Salir"
# opcion = get.chomps.to_i
# }

ready = 0
until( ready == 4) do
puts "Opción 1: blah"
puts "Opción 2: blah"
puts "Opción 3: blah"
puts "Opción 4: Salir"
ready = gets.chomp.to_i
end

# 3) Ciclos Iterativos Anidados
# 3.1
# Se pide imprimir la secuencia numérica, de la siguiente forma:

# 1 2 3 4
# 2 4 6 8
# 3 6 9 12
# 4 8 12 16

a = [1,2,3,4]
4.times do |j|
    puts "\n"
    a.each do |b|
        print b*(j+1), ' '
    end
end

# 3.2
# Generar el código para imprimir un string con el siguiente contenido:
# <table>
# <tbody>
# <tr>
# <td> 1 </td>
# <td> 2 </td>
# <td> 3 </td>
# <td> 4 </td>
# </tr>
# <tr>
# <td> 5 </td>
# <td> 6 </td>
# <td> 7 </td>
# <td> 8 </td>
# </tr>
# <tr>
# <td> 9 </td>
# <td> 10 </td>
# <td> 11 </td>
# <td> 12 </td>
# </tr>
# <tbody>
# </table>
puts '<table>'
puts '<tbody>'
3.times do |i|
    puts '<tr>'
    4.times do |j|
        
        puts "<td> #{(j+1)+(4*i)} </td>"
        
    end
    puts '</tr>'
end

# 3.3
# Construir un programa que permita ingresar un número por teclado e imprimir la tabla de multiplicar
# del número ingresado.
# Debe repetir la operación (volver a preguntar por un número) hasta que se ingrese un 0 (cero).
number = 1

while (number != 0) do
    puts 'Ingrese un número (0 para salir): '
    number = gets.chomp.to_i
    if (number != 0)
        12.times do |i|
            puts "#{number} x #{i+1} = #{number*(i+1)}"
        end
    end
end