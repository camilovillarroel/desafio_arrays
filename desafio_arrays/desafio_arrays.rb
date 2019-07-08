# 1)
# Dado el array:
# arreglo = [1,2,3,9,1,4,5,2,3,6,6]

# 1. Imprimir el primer elemento.
arreglo = [1,2,3,9,1,4,5,2,3,6,6]

puts arreglo[0]

# 2. Imprimir el último elemento.

puts arreglo[-1]

# 3. Imprimir, utilizando una iteración, todos los elementos.

arreglo.each do |i| 
    print i
end

# 4. Imprimir, utilizando una iteración, todos los elementos junto con su índice.

arreglo.each_with_index do |i,index| 
    print [i, index]  
end

# 5. Imprimir todos los elementos que se encuentren en una posición (índice) par

arreglo.each_with_index do |i,index| 
    print i if (index.even?) 
end

#2)Dado el array:
a= [1,2,3,9,1,4,5,2,3,6,6]

#1. Eliminar el último elemento.

a.pop

#2. Obtener la suma de todos los elementos del arreglo utilizando .each
suma = 0
a.each do |i|
    suma = suma + i
end
puts suma

#3. Obtener el promedio de los elementos del arreglo.

suma = 0
a.each do |i|
    suma = suma + i
end
puts (suma/(a.count))

#4. Incrementar todos los elementos en 1 retornando un nuevo arreglo
b = []
a.each do |i|
    b << (i+1)
end
print b 

#4)
# Se tiene un arreglo de productos:

# products = %w(Producto1 Producto2 Producto3 Producto4)
# html = ''
# products.each do |i|
# html += "<div class='product'></div>\n"
# end

# Se pide que el output sea un string con el siguiente contenido:

# <div class='product'><p> Producto1 </p></div>
# <div class='product'><p> Producto2 </p></div>
# <div class='product'><p> Producto3 </p></div>
# <div class='product'><p> Producto4 </p></div>
products = %w(Producto1 Producto2 Producto3 Producto4)
html = ''
products.each do |i|
    html += "<div class='product'> #{i}</div>\n"
end
puts html

# 5)
# Se tiene un arreglo de productos y precios:
# products = %w(Producto1 Producto2 Producto3 Producto4)
# prices = %w[1000 2000 1500 950]
# html = ''
# products.each do |i|
# html += "<div class='product'>"
# html += "</div>\n"
# end
# Se pide que el output sea:
# <div class='product'><p> Producto1 </p><p> Precio: 1000 </p></div>
# <div class='product'><p> Producto2 </p><p> Precio: 2000 </p></div>
# <div class='product'><p> Producto3 </p><p> Precio: 1500 </p></div>
# <div class='product'><p> Producto4 </p><p> Precio: 950 </p></div>

products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''
products.each_with_index do |product,index|
    html += "<div class='product'>"
    html += "<p> #{product} </p><p> Precio :#{prices[index]}</p>"
    html += "</div>\n"
end
puts html

# 6)
# Dado los arrays

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

# Obtener:
# 1. La concatenación de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos
# veces en el resultado).

print a + b 

# 2. La unión de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en
# el resultado).

print (a|b)
# 3. La intersección de a y b. (hint: El resultado debe estar compuesto por los elementos que se
# repiten en a y b).

print (a & b)
# 4. Intercalar los elementos:

# resultado = [[1, "lunes"], [2, "martes"], [3, "miércoles"], [9, "jueves"],
# [12, "viernes"], [31, "sábado"], ["domingo", "domingo"]]
c=[]
a.each_with_index do |i,index|
    c << [i, b[index]]
end
print c 



