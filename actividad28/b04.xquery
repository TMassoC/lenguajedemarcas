(: 4. Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30. :)

for $book in doc("biblioteca.xml")/bookstore/book
where $book/price <=30 
return $book/title/text()


