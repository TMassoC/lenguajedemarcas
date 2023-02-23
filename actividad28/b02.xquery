(: 2. Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where”. :)


for $book in doc("biblioteca.xml")/bookstore/book
where $book/price <=30 
return $book/title




